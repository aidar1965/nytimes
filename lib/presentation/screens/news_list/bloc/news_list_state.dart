part of 'news_list_bloc.dart';

@freezed
class NewsListState with _$NewsListState {
  const factory NewsListState.pending() = _StatePending;
  const factory NewsListState.dataReceived({
    required List<Article> articles,
    Section? selectedSection,
    required bool isConnected,
  }) = _StateDataReceived;
  const factory NewsListState.error({String? errorText}) = _StateError;
  const factory NewsListState.searchResult({
    required List<Article> articles,
  }) = _StateSearchResult;
}
