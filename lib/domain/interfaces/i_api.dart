import 'package:nytimes/domain/models/page_articles.dart';

import '../../data/api/models/requests/request_articles_search.dart';
import '../../data/api/models/section.dart';

abstract class IApi {
  Future<PageArticles> getArticles({
    List<Section>? sections,
    int? page,
    Section? selectedSection,
  });
}
