import '../models/article.dart';
import '../models/favorite.dart';

abstract class ILocalDb {
  Future<void> saveArticles(List<Article> articles);
  Future<List<Article>>? getArticles();
  Future<List<Article>?>? searchArticles(String text);
  Future<void> clearLocalDBArticles();

  Future<void> setFavorite(Favorite favorite);

  Future<List<Favorite>> getFavorites();

  Future<void> removeFavorite(Favorite favorite);
}
