import 'dart:async';

import '../models/favorite.dart';

typedef FavoritesSubscription = StreamSubscription<List<Favorite>>;

abstract class IFavoritesRepository {
  List<Favorite> get favorites;

  Future<void> setFavorite(Favorite favorite);

  Future<void> getFavorites();

  Future<void> removeFavorite(Favorite favorite);

  FavoritesSubscription subscribe(Function(List<Favorite>) listener);
}
