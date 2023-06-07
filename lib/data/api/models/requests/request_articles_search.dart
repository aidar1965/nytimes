import '../../../../presentation/common/common_functions.dart';
import '../../../../presentation/constants/constants.dart';

import '../../http_client/i_api_request.dart';

import '../section.dart';

// class for extending IApiRequest for request
class RequestArticlesSearch extends IApiRequest {
  RequestArticlesSearch({
    this.sections,
    this.page,
  }) : super(
          methodType: AvailableApiMethods.get,
          endPoint: 'svc/search/v2/articlesearch.json',
        );

  final List<Section>? sections;
  final int? page;

  @override
  Map<String, dynamic>? get queryParameters => {
        'api-key': Constants.nyTimesPublicKey,
        if (page != null) 'page': page,
        if (sections != null) 'fq': sectionsQueryParams(sections!),
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
