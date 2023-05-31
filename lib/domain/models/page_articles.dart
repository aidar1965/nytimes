import 'package:flutter/foundation.dart';

import 'article.dart';

@immutable
class PageArticles {
  const PageArticles({
    required this.offset,
    required this.articles,
  });
  final int offset;
  final Iterable<Article> articles;
}
