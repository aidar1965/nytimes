import '../../../../presentation/common/common_functions.dart';
import '../../../../presentation/constants/constants.dart';
import '../../http_client/http_client.dart';
import '../../http_client/i_api_request.dart';
import '../article_category.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../section.dart';

class RequestArticlesSearch extends IApiRequest {
  RequestArticlesSearch({
    this.sections,
    this.page,
    this.section,
  }) : super(
          methodType: AvailableApiMethods.get,
          url: 'svc/search/v2/articlesearch.json',
        );

  final List<Section>? sections;
  final int? page;
  final Section? section;

  @override
  Map<String, dynamic>? get queryParameters => {
        'api-key': Constants.nyTimesPublicKey,
        if (page != null) 'page': page,
        if (sections != null) 'fq': sectionsQueryParams(sections!),
        if (section != null)
          'fq': 'section_name:${CommonFunctions.fromSection(section!)}'
      };

  String sectionsQueryParams(List<Section> sections) {
    String q = 'section_name:(';
    q += '"${CommonFunctions.fromSection(sections.first)}"';
    for (final s in sections) {
      if (s != sections.first) q += ',"${CommonFunctions.fromSection(s)}"';
    }
    q += ')';
    return q;
  }
}
