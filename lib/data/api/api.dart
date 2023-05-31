import 'dart:convert';

import 'package:nytimes/data/api/mapper/mapper.dart';
import 'package:nytimes/data/api/models/requests/request_articles_search.dart';

import 'package:nytimes/domain/models/page_articles.dart';

import '../../domain/interfaces/i_api.dart';
import 'http_client/http_client.dart';
import 'models/responses/page_articles_dto.dart';
import 'models/section.dart';

typedef _JsonObject = Map<String, dynamic>;

class Api implements IApi {
  final DioClient httpClient = DioClient();
  final ApiDataMapper mapper = ApiDataMapper();

  @override
  Future<PageArticles> getArticles(
      {List<Section>? sections, int? page, Section? selectedSection}) async {
    final response = await httpClient.request(RequestArticlesSearch(
      sections: sections,
      page: page,
      section: selectedSection,
    ));
    return mapper.mapPageArticles(
      PageArticlesDto.fromJson(
          jsonDecode('${response?.data}')['response'] as _JsonObject),
    );
  }
}
