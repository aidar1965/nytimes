enum AvailableApiMethods { get, post, put, delete, patch }

/// abstract class used for extending for each api request

abstract class IApiRequest {
  IApiRequest({
    required AvailableApiMethods methodType,
    required String endPoint,
  })  : _endPoint = endPoint,
        _methodType = methodType;

  final AvailableApiMethods _methodType;
  final String _endPoint;

  String get endPoint => _endPoint;

  AvailableApiMethods get methodType => _methodType;

  Map<String, Object?>? get body => null;

  Map<String, dynamic>? get queryParameters => null;
}
