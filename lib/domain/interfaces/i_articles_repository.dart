import 'dart:async';

import '../models/article.dart';

typedef ArticlesSubscription = StreamSubscription<List<Article>?>;

abstract class IArticlesRepository {
  List<Article>? get articles;

  Future<void> saveArticlesLocally(List<Article> articles);

  Future<List<Article>?>? getLocalArticles();

  Future<void> clearLocalArticles();

  ArticlesSubscription subscribe(Function(List<Article>?) listener);
}
