// MAP RESPONSES
import 'package:nytimes/data/api/models/responses/article_dto.dart';
import 'package:nytimes/data/api/models/responses/page_articles_dto.dart';
import 'package:nytimes/domain/models/page_articles.dart';

import '../../../domain/models/article.dart';
import '../../../presentation/constants/constants.dart';

class ApiDataMapper {
  Article mapArticle(ArticleDto dto) {
    return Article(
      title: dto.headline.main,
      url: dto.url,
      articleAbstract: dto.snippet,
      date: DateTime.parse(dto.date),
      image: dto.multimedia != null && dto.multimedia!.isNotEmpty
          ? dto.multimedia!
              .firstWhere(
                (element) => element!.type == 'image',
                orElse: () => null,
              )
              ?.url
          : null,
      authors: dto.byline.persons
          .map((e) => '${e.firstName} ${e.lastName}')
          .toList(),
    );
  }

  PageArticles mapPageArticles(PageArticlesDto dto) {
    return PageArticles(
      offset: dto.meta.offset,
      articles: dto.articles.map(mapArticle),
    );
  }
}
