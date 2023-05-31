import 'dart:async';

import 'package:nytimes/domain/interfaces/i_articles_repository.dart';
import 'package:nytimes/domain/models/article.dart';

import '../interfaces/i_local_db.dart';

class ArticlesRepository implements IArticlesRepository {
  ArticlesRepository({
    required this.localDb,
  }) {
    _articlesController = StreamController<List<Article>?>.broadcast();
  }

  List<Article>? _articles;

  final ILocalDb localDb;
  late final StreamController<List<Article>?> _articlesController;

  @override
  List<Article>? get articles => _articles;

  @override
  Future<void> clearLocalArticles() async {
    await localDb.clearLocalDBArticles();
  }

  @override
  Future<List<Article>?>? getLocalArticles() async {
    _articles = await localDb.getArticles();
    _articlesController.add(_articles);
    return _articles;
  }

  @override
  Future<void> saveArticlesLocally(List<Article> articles) async {
    await localDb.saveArticles(articles);
    if (_articles != null) {
      _articles!.addAll(articles);
    } else {
      _articles = articles;
    }
    _articlesController.add(_articles);
  }

  @override
  ArticlesSubscription subscribe(Function(List<Article>? articles) listener) {
    return _articlesController.stream.listen(listener);
  }
}
