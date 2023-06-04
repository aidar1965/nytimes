import 'dart:convert';

import 'package:nytimes/data/api/mapper/mapper.dart';
import 'package:nytimes/data/api/models/requests/request_articles_search.dart';

import 'package:nytimes/domain/models/page_articles.dart';

import '../../domain/interfaces/i_api.dart';
import 'http_client/http_client.dart';
import 'models/responses/page_articles_dto.dart';
import 'models/section.dart';

typedef _JsonObject = Map<String, dynamic>;

/// implementing IApi for each request

class Api implements IApi {
  // Dio
  final DioClient httpClient = DioClient();
  // class for converting responses to Dart objects
  final ApiDataMapper mapper = ApiDataMapper();

  @override
  Future<PageArticles> getArticles({List<Section>? sections, int? page}) async {
    final response = await httpClient.request(RequestArticlesSearch(
      sections: sections,
      page: page,
    ));
    return mapper.mapPageArticles(
      PageArticlesDto.fromJson(
        jsonDecode('${response?.data}')['response'] as _JsonObject,
      ),
    );
  }
}
