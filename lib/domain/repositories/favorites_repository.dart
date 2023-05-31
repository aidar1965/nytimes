import 'dart:async';

import 'package:nytimes/domain/models/favorite.dart';

import '../interfaces/i_favorites_repository.dart';
import '../interfaces/i_local_db.dart';

class FavoritesRepository implements IFavoritesRepository {
  FavoritesRepository({
    required this.localDb,
  });

  final ILocalDb localDb;

  List<Favorite>? _favorites;

  final _favoritesController = StreamController<List<Favorite>>.broadcast();

  @override
  List<Favorite> get favorites => _favorites ?? [];

  @override
  Future<void> getFavorites() async {
    _favorites = await localDb.getFavorites();
    _favoritesController.add(_favorites ?? []);
  }

  @override
  Future<void> removeFavorite(Favorite favorite) async {
    await localDb.removeFavorite(favorite);
    await getFavorites();
  }

  @override
  Future<void> setFavorite(Favorite favorite) async {
    await localDb.setFavorite(favorite);
    await getFavorites();
  }

  @override
  FavoritesSubscription subscribe(Function(List<Favorite>) listener) {
    return _favoritesController.stream.listen(listener);
  }
}
