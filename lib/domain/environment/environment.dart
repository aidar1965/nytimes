import 'package:nytimes/domain/interfaces/i_articles_repository.dart';
import 'package:nytimes/domain/interfaces/i_favorites_repository.dart';
import 'package:nytimes/domain/interfaces/i_local_db.dart';

import '../../data/api/api.dart';
import '../../data/local_db/localDb.dart';
import '../interfaces/i_api.dart';
import '../repositories/articles_repository.dart';
import '../repositories/favorites_repository.dart';

class Environment {
  static Future<Map<Type, Object>> buildEnvironment({
    Map<Type, Object>? initialMap,
  }) async {
    final Map<Type, Object> ret = initialMap ?? {};

    // -------------------------------------------------------------------------
    // http клиент
    final IApi api = Api();

    ret[IApi] = api;

    final ILocalDb localDb = LocalDb();

    ret[ILocalDb] = localDb;

    final IArticlesRepository articlesRepository =
        ArticlesRepository(localDb: localDb);

    ret[IArticlesRepository] = articlesRepository;

    final IFavoritesRepository favoritesRepository =
        FavoritesRepository(localDb: localDb);

    ret[IFavoritesRepository] = favoritesRepository;

    return ret;
  }
}
