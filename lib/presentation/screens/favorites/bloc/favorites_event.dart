part of 'favorites_bloc.dart';

@freezed
class FavoritesEvent with _$FavoritesEvent {
  const factory FavoritesEvent.sectionSelectedOrUnselected({
    required Section section,
  }) = _EventSectionSelectedOrUnselected;

  const factory FavoritesEvent.initialDataRequested() =
      _EventInitialDataRequested;
  const factory FavoritesEvent.onFavoritesListChanged() =
      _EventOnFavoritesListChanged;
}
