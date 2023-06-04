// Exceptions caused by API requests
class RequestException implements Exception {
  RequestException({
    required this.httpStatusCode,
    this.response,
    this.responseValues,
    required this.requestPath,
    this.requestData,
    required this.requestMethod,
  });

  final int httpStatusCode;
  final Map<String, Object?>? response;
  final String? responseValues;
  final String requestPath;
  final Object? requestData;
  final String requestMethod;
}
