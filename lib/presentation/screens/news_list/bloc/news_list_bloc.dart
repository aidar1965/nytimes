import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dep_gen/dep_gen.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import '../../../../data/api/http_client/request_exception.dart';

import '../../../../domain/common/debouncer.dart';
import '../../../../domain/interfaces/i_api.dart';
import '../../../../domain/models/article.dart';

import '../../../../data/api/models/section.dart';
import '../../../../domain/interfaces/i_articles_repository.dart';
import '../../../constants/constants.dart';

part 'news_list_bloc.freezed.dart';
part 'news_list_event.dart';
part 'news_list_state.dart';

@DepGen()
class NewsListBloc extends Bloc<NewsListEvent, NewsListState> {
  NewsListBloc({
    @DepArg() required this.api,
    @DepArg() required this.articlesRepository,
  }) : super(const NewsListState.dataReceived(
          articles: [],
          selectedSection: null,
          isConnected: true,
          isPending: true,
        )) {
    on<NewsListEvent>(
      (event, emitter) => event.map(
        dataRequested: (event) => _dataRequested(event, emitter),
        refresh: (event) => _refresh(event, emitter),
        sectionSelected: (event) => _sectionSelected(event, emitter),
        onConnectivityChanged: (event) =>
            _onConnectivityChanged(event, emitter),
        searchTextChanged: (event) => _localSearch(event, emitter),
        onLocalArticlesChanged: (event) =>
            _onLocalArticlesChanged(event, emitter),
        searchParamsChanged: (event) => _searchParamsChanged(event, emitter),
      ),
    );

    connectivitySubscription =
        connectivity.onConnectivityChanged.listen((result) {
      add(NewsListEvent.onConnectivityChanged(
        connectivityResult: result,
      ));
    });

    addPeriodicFetch();
    articlesRepositorySubscription =
        articlesRepository.subscribe(onLocalArticlesChanged);

    _debouncer = Debouncer<SearchParams>(callBack: _onDebouncerCalled);
  }

  final IApi api;
  final IArticlesRepository articlesRepository;

  late List<Article> localArticles;

  late List<Article> renewedArticlesList;

  static const int maximumArticlesInLocalDb = 40;

  List<Article> articles = [];

  // pagination
  int page = 0;

  /// control not to send request while page loading on pagination
  bool isLoadingNextPage = false;

  /// selected Section for local search
  Section? selectedSection;

  final connectivity = Connectivity();

  late StreamSubscription<ConnectivityResult> connectivitySubscription;

  late ArticlesSubscription articlesRepositorySubscription;

  late ConnectivityResult connectivityResult;

  late bool isConnected;

  /// for periodic search
  Timer? timer;

  /// control pagination while displaying local search result
  bool onlyLocalArticles = false;

  late final Debouncer _debouncer;

  var _searchParams = const SearchParams();

  /// request articles from server or local database
  Future<void> _dataRequested(
      _EventDataRequested event, Emitter emitter) async {
    if (isLoadingNextPage) {
      return;
    }

    connectivityResult = await (connectivity.checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      isConnected = true;

      /// checking if we are tor making local search
      if (onlyLocalArticles == false) {
        try {
          isLoadingNextPage = true;
          final pageArticles = await api.getArticles(
            page: page,
            sections: selectedSection != null ? [selectedSection!] : null,
          );

          /// we should add only new articles
          final List<String> titlesOfExistingArticles =
              articles.map((article) => article.title).toList();

          final newArticles = pageArticles.articles.toList();

          newArticles.removeWhere(
              (article) => titlesOfExistingArticles.contains(article.title));

          articles = [
            ...newArticles,
            ...articles,
          ];

          /// renew articles stored in local db
          await renewLocalDbArticlesList();
          page++;

          emitter(NewsListState.dataReceived(
            articles: articles,
            selectedSection: selectedSection,
            isConnected: isConnected,
          ));
        } on RequestException catch (e) {
          /// this rxception specofied in API
          if (e.httpStatusCode == 429) {
            emitter(
              const NewsListState.error(errorText: 'Quota limit  exceeded'),
            );
            articles = await articlesRepository.getLocalArticles() ?? [];
            emitter(NewsListState.dataReceived(
              articles: articles,
              isConnected: isConnected,
            ));
          } else {
            articles = await articlesRepository.getLocalArticles() ?? [];
            emitter(NewsListState.dataReceived(
              articles: articles,
              isConnected: isConnected,
            ));
          }
          rethrow;
        } on Object {
          emitter(const NewsListState.error(errorText: 'something went wrong'));
          rethrow;
        } finally {
          isLoadingNextPage = false;
        }
      }
    } else {
      isConnected = false;
      articles = await articlesRepository.getLocalArticles() ?? [];
      emitter(NewsListState.dataReceived(
        articles: articles,
        isConnected: isConnected,
      ));
    }
  }

  /// used for emitting search results
  onLocalArticlesChanged(List<Article>? articlesFromDb) {
    onlyLocalArticles = true;
    add(NewsListEvent.onLocalArticlesChanged(articlesFromDb ?? []));
  }

  /// update articles in local database
  Future<void> renewLocalDbArticlesList() async {
    localArticles = await articlesRepository.getLocalArticles() ?? [];

    final List<String> articlesInDbTitles =
        localArticles.map((e) => e.title).toList();

    List<Article> aggregateList = [];

    if (articlesInDbTitles.isNotEmpty) {
      for (final a in articles) {
        if (!articlesInDbTitles.contains(a.title)) {
          aggregateList.add(a);
        }
      }
    } else {
      aggregateList = [...articles];
    }
    aggregateList = [...aggregateList, ...localArticles];

    aggregateList.sort((a, b) => b.date.compareTo(a.date));

    final renewedArticlesList =
        aggregateList.take(maximumArticlesInLocalDb).toList();

    if (renewedArticlesList.isNotEmpty) {
      await articlesRepository.clearLocalArticles();
      await articlesRepository.saveArticlesLocally(renewedArticlesList);
    }
  }

  /// on pull down refresh page
  Future<void> _refresh(_EventRefresh event, Emitter emitter) async {
    page = 0;
    articles = [];
    onlyLocalArticles = false;
    add(const NewsListEvent.dataRequested());
  }

  Future<void> _sectionSelected(
      _EventSectionSelected event, Emitter emitter) async {
    selectedSection = event.selectedSection;
    emitter(NewsListState.dataReceived(
      articles: articles,
      isConnected: isConnected,
      selectedSection: selectedSection,
      isPending: false,
    ));
  }

  Future<void> _onConnectivityChanged(
      _EventConnectivityChanged event, Emitter emitter) async {
    connectivityResult = event.connectivityResult;
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      isConnected = true;
    } else {
      isConnected = false;
    }
    emitter(NewsListState.dataReceived(
      articles: articles,
      isConnected: isConnected,
    ));
  }

  Future<void> _localSearch(_EventSearch event, Emitter emitter) async {
    _searchParams = _searchParams.copyWith(text: event.text);
    _debouncer.onEvent(_searchParams);
  }

  /// update data periodically
  void addPeriodicFetch() {
    Future.delayed(const Duration(minutes: Constants.periodicSeachTime), () {
      timer = Timer.periodic(
          const Duration(minutes: Constants.periodicSeachTime), (timer) async {
        page = 0;
        add(const NewsListEvent.dataRequested());
      });
    });
  }

  /// called by listener of articlesRepository
  void _onLocalArticlesChanged(
      _EventOnLocalArticlesChanged event, Emitter<NewsListState> emitter) {
    emitter(NewsListState.dataReceived(
      articles: event.articles ?? [],
      isConnected: isConnected,
    ));
  }

  void _onDebouncerCalled(SearchParams? searchParams) {
    if (isClosed) return;
    add(const NewsListEvent.searchParamsChanged());
  }

  Future<void> _searchParamsChanged(
      _EventOnSearchParamsChanged event, Emitter<NewsListState> emitter) async {
    await articlesRepository.searchArticles(_searchParams.text);
  }

  @override
  Future<void> close() {
    connectivitySubscription.cancel();
    articlesRepositorySubscription.cancel();
    timer?.cancel();
    return super.close();
  }
}

@immutable
class SearchParams {
  const SearchParams({
    this.text = '',
    this.section,
  });

  final String text;
  final Section? section;

  bool get invalidSearchRequest => text.isEmpty;

  SearchParams clearSection() => SearchParams(
        text: text,
        section: null,
      );

  SearchParams copyWith({
    String? text,
  }) =>
      SearchParams(
        text: text ?? this.text,
        section: section ?? this.section,
      );
}
