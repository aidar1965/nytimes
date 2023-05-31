part of 'favorites_bloc.dart';

@freezed
class FavoritesState with _$FavoritesState {
  const factory FavoritesState.pending() = _StatePending;
  const factory FavoritesState.data({
    required List<Favorite> favorites,
    @Default(false) bool isPending,
  }) = _StateData;
}
