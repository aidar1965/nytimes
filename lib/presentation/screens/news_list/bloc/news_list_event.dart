part of 'news_list_bloc.dart';

@freezed
class NewsListEvent with _$NewsListEvent {
  const factory NewsListEvent.dataRequested({int? page}) = _EventDataRequested;
  const factory NewsListEvent.search({
    required String text,
  }) = _EventSearch;
  const factory NewsListEvent.refresh() = _EventRefresh;
  const factory NewsListEvent.sectionSelected({
    Section? selectedSection,
  }) = _EventSectionSelected;
  const factory NewsListEvent.onConnectivityChanged(
          {required ConnectivityResult connectivityResult}) =
      _EventConnectivityChanged;
}
