import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dep_gen/dep_gen.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

import '../../../../data/api/http_client/request_exception.dart';

import '../../../../domain/interfaces/i_api.dart';
import '../../../../domain/interfaces/i_local_db.dart';
import '../../../../domain/models/article.dart';

import '../../../../data/api/models/section.dart';
import '../../../../domain/interfaces/i_articles_repository.dart';

part 'news_list_bloc.freezed.dart';
part 'news_list_event.dart';
part 'news_list_state.dart';

@DepGen()
class NewsListBloc extends Bloc<NewsListEvent, NewsListState> {
  NewsListBloc(
    this.needToReload, {
    @DepArg() required this.api,
    @DepArg() required this.articlesRepository,
    @DepArg() required this.localDb,
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
        search: (event) => _localSearch(event, emitter),
      ),
    );

    connectivitySubscription =
        connectivity.onConnectivityChanged.listen((result) {
      add(NewsListEvent.onConnectivityChanged(
        connectivityResult: result,
      ));
    });

    addPeriodicFetch();
  }

  final IApi api;
  final IArticlesRepository articlesRepository;
  final ILocalDb localDb;

  late List<Article> localArticles;

  late List<Article> renewedArticlesList;

  static const int maximumArticlesInLocalDb = 40;

  List<Article> articles = [];

  int page = 0;

  bool isLoadingNextPage = false;

  Section? selectedSection;

  bool isAppBackgroundServiceInitialized = false;

  final connectivity = Connectivity();

  late StreamSubscription<ConnectivityResult> connectivitySubscription;

  late ConnectivityResult connectivityResult;

  late bool isConnected;

  final bool? needToReload;

  Timer? timer;

  Future<void> _dataRequested(
      _EventDataRequested event, Emitter emitter) async {
    if (isLoadingNextPage) {
      return;
    }

    connectivityResult = await (connectivity.checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      isConnected = true;
      try {
        isLoadingNextPage = true;
        final pageArticles = await api.getArticles(
          page: page,
          sections: selectedSection != null ? [selectedSection!] : null,
        );

        final List<String> titlesOfExistingArticles =
            articles.map((article) => article.title).toList();

        final newArticles = pageArticles.articles.toList();

        newArticles.removeWhere(
            (article) => titlesOfExistingArticles.contains(article.title));

        articles = [
          ...newArticles,
          ...articles,
        ];

        localArticles = await articlesRepository.getLocalArticles() ?? [];
        await renewLocalDbArticlesList();
        page++;

        emitter(NewsListState.dataReceived(
          articles: articles,
          selectedSection: selectedSection,
          isConnected: isConnected,
        ));
      } on RequestException catch (e) {
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
    } else {
      isConnected = false;
      articles = await articlesRepository.getLocalArticles() ?? [];
      emitter(NewsListState.dataReceived(
        articles: articles,
        isConnected: isConnected,
      ));
    }
  }

  onLocalArticlesChanged(List<Article>? articlesFromDb) {
    localArticles = articlesFromDb ?? [];
  }

  Future<void> renewLocalDbArticlesList() async {
    // переменная, с помощью которой будем проверять,
    // нужно ли включать загруженный элемент листа в локальную
    // базу данных
    final List<String> articlesInDbTitles =
        localArticles.map((e) => e.title).toList();

    List<Article> aggregateList = [];

    /// добавляем в список для локальной базы данных уникальные элементы

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

    // сортируем по времени, сначала новые
    aggregateList.sort((a, b) => b.date.compareTo(a.date));
    // возвращаем первые 40 (или меньше)
    final renewedArticlesList =
        aggregateList.take(maximumArticlesInLocalDb).toList();

    if (renewedArticlesList.isNotEmpty) {
      await articlesRepository.clearLocalArticles();
      await articlesRepository.saveArticlesLocally(renewedArticlesList);
      final a = await articlesRepository.getLocalArticles();
    }
  }

  Future<void> _refresh(_EventRefresh event, Emitter emitter) async {
    page = 0;
    articles = [];
    add(const NewsListEvent.dataRequested());
  }

  Future<void> _sectionSelected(
      _EventSectionSelected event, Emitter emitter) async {
    page = 0;
    selectedSection = event.selectedSection;
    emitter(NewsListState.dataReceived(
      articles: articles,
      isConnected: isConnected,
      isPending: true,
    ));
    add(const NewsListEvent.dataRequested());
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
    final searchResultArticles = await localDb.searchArticles(event.text);
    emitter(NewsListState.searchResult(articles: searchResultArticles ?? []));
  }

  @override
  Future<void> close() {
    connectivitySubscription.cancel();
    timer?.cancel();
    return super.close();
  }

  void addPeriodicFetch() {
    Future.delayed(const Duration(minutes: 5), () {
      timer = Timer.periodic(const Duration(minutes: 5), (timer) async {
        page = 0;
        add(const NewsListEvent.dataRequested());
      });
    });
  }
}
