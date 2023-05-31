import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dep_gen/dep_gen.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/api/models/section.dart';
import '../../../../domain/interfaces/i_favorites_repository.dart';
import '../../../../domain/models/favorite.dart';

part 'favorites_bloc.freezed.dart';
part 'favorites_event.dart';
part 'favorites_state.dart';

@DepGen()
class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  FavoritesBloc({
    @DepArg() required this.favoritesRepository,
  }) : super(const _StatePending()) {
    on<FavoritesEvent>((event, emitter) => event.map(
          initialDataRequested: (event) =>
              _initialDataRequested(event, emitter),
          sectionSelectedOrUnselected: (event) =>
              _sectionSelectedOrUnselected(event, emitter),
          onFavoritesListChanged: (event) =>
              _onFavoritesChanged(event, emitter),
        ));
    add(const FavoritesEvent.initialDataRequested());
    subscription = favoritesRepository
        .subscribe((favoritesList) => onFavoritesChanged(favoritesList));
  }

  final IFavoritesRepository favoritesRepository;

  late List<Favorite> favorites;

  late FavoritesSubscription subscription;

  Future<void> _sectionSelectedOrUnselected(
      _EventSectionSelectedOrUnselected event,
      Emitter<FavoritesState> emitter) async {
    if (favorites.map((e) => e.section).toList().contains(event.section)) {
      await favoritesRepository.removeFavorite(favorites.firstWhere(
        (element) => element.section == event.section,
      ));
    } else {
      await favoritesRepository.setFavorite(Favorite(
        section: event.section,
      ));
    }
  }

  Future<void> _initialDataRequested(
      _EventInitialDataRequested event, Emitter<FavoritesState> emitter) async {
    await favoritesRepository.getFavorites();
    favorites = favoritesRepository.favorites;
    emitter(FavoritesState.data(favorites: favorites));
  }

  void onFavoritesChanged(List<Favorite> favoritesList) {
    favorites = favoritesList;
    add(const FavoritesEvent.onFavoritesListChanged());
  }

  void _onFavoritesChanged(
      _EventOnFavoritesListChanged event, Emitter<FavoritesState> emitter) {
    emitter(FavoritesState.data(favorites: favorites));
  }

  @override
  Future<void> close() {
    subscription.cancel();
    return super.close();
  }
}
