import '../../http_client/http_client.dart';
import '../../http_client/i_api_request.dart';
import '../article_category.dart';

import 'package:flutter_dotenv/flutter_dotenv.dart';

class RequestGetArticlesByCategory extends IApiRequest {
  RequestGetArticlesByCategory({
    required this.category,
    this.page,
  }) : super(
          methodType: AvailableApiMethods.get,
          endPoint: '$category.json',
        );

  final Category category;
  final int? page;

  @override
  Map<String, dynamic>? get queryParameters => {
        'api-key': dotenv.env['NYTIMES_KEY'],
        'page': page,
      };
}
