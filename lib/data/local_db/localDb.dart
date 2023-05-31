import 'dart:developer';

import 'package:isar/isar.dart';
import 'package:nytimes/domain/models/article.dart';
import 'package:nytimes/domain/models/favorite.dart';
import 'package:path_provider/path_provider.dart';

import '../../domain/interfaces/i_local_db.dart';

class LocalDb implements ILocalDb {
  static Isar? _isar;
  static Future<void> init() async {
    if (_isar == null) {
      final dir = await getApplicationDocumentsDirectory();
      _isar = await Isar.open(
        [ArticleSchema, FavoriteSchema],
        directory: dir.path,
      );
    }
  }

  @override
  Future<List<Article>> getArticles() async {
    await init();
    return await _isar!.articles.where().sortByDateDesc().findAll();
  }

  @override
  Future<void> saveArticles(List<Article> articles) async {
    await init();
    await _isar?.writeTxn(() async {
      for (var article in articles) {
        await _isar?.articles.put(article);
      }
    });
  }

  @override
  Future<List<Article>> searchArticles(String text) async {
    await init();

    final result = await _isar!.articles
        .filter()
        .articleAbstractContains(text, caseSensitive: false)
        .or()
        .titleContains(text, caseSensitive: false)
        .or()
        .authorsElementContains(text, caseSensitive: false)
        .findAll();
    return result;
  }

  @override
  Future<void> clearLocalDBArticles() async {
    await init();
    var existingArticles = await _isar!.articles.where().findAll();
    for (var a in existingArticles) {
      await _isar?.writeTxn(() async {
        final success = await _isar?.articles.delete(a.id);
      });
    }
    var testDeleteArticles =
        await _isar!.articles.where().findAll(); // TODO убрать
    log(testDeleteArticles.length.toString());
  }

  @override
  Future<List<Favorite>> getFavorites() async {
    await init();
    return await _isar!.favorites.where().sortBySection().findAll();
  }

  @override
  Future<void> removeFavorite(Favorite favorite) async {
    await init();
    await _isar?.writeTxn(() async {
      await _isar!.favorites.delete(favorite.id);
    });
    await getFavorites();
  }

  @override
  Future<void> setFavorite(Favorite favorite) async {
    await init();
    await _isar?.writeTxn(() async {
      await _isar!.favorites.put(favorite);
    });
    await getFavorites();
  }
}
