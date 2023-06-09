part of 'news_list_bloc.dart';

@freezed
class NewsListEvent with _$NewsListEvent {
  /// request data fronm NYT server
  const factory NewsListEvent.dataRequested({int? page}) = _EventDataRequested;

  /// search articles in local db
  const factory NewsListEvent.searchTextChanged({
    required String text,
  }) = _EventSearch;

  /// pull down refresh page
  const factory NewsListEvent.refresh() = _EventRefresh;

  /// select search section in drawer
  const factory NewsListEvent.sectionSelected({
    Section? selectedSection,
  }) = _EventSectionSelected;

  /// connectivity changed
  const factory NewsListEvent.onConnectivityChanged(
          {required ConnectivityResult connectivityResult}) =
      _EventConnectivityChanged;

  /// listening ArticlesRepository changes
  const factory NewsListEvent.onLocalArticlesChanged(List<Article>? articles) =
      _EventOnLocalArticlesChanged;

  /// listening search changes
  const factory NewsListEvent.searchParamsChanged() =
      _EventOnSearchParamsChanged;
}
