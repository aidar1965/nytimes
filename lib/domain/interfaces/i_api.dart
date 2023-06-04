import 'package:nytimes/domain/models/page_articles.dart';

import '../../data/api/models/section.dart';

/// abstract class describing all api requests with input data

abstract class IApi {
  /// request for search for NYT articles
  Future<PageArticles> getArticles({
    List<Section>? sections, // sections og search
    int? page, // pagination
  });
}
