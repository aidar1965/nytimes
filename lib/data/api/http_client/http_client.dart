import 'dart:convert';
import 'package:dio/dio.dart';

import '../../../presentation/constants/constants.dart';
import 'i_api_request.dart';
import 'request_exception.dart';

// http cliend with Dio
class DioClient {
  // ---------------------------------------------------------------------------
  DioClient() {
    _init();
  }
  Dio? _dio;
  late BaseOptions _dioOptions;

  // ---------------------------------------------------------------------------
  static const bool debugMode = true;

  static const String _baseUrl = '${Constants.hostHttp}://${Constants.hostUrl}';

  void _init() {
    _dioOptions = BaseOptions(
      baseUrl: _baseUrl,
      connectTimeout: const Duration(seconds: 12),
      receiveTimeout: const Duration(seconds: 12),
    );
    _dio = Dio(_dioOptions);
  }

  // ---------------------------------------------------------------------------
  Future<Response<Object?>?> request(IApiRequest request) async {
    if (_dio == null) throw UnimplementedError('Dio is not initialized');

    final String url = '$_baseUrl${request.endPoint}';
    try {
      Response<String> response;

      switch (request.methodType) {
        case AvailableApiMethods.get:
          response = await _dio!
              .get<String>(url, queryParameters: request.queryParameters);
          break;
        case AvailableApiMethods.post:
          response = await _dio!.post<String>(url, data: request.body);
          break;
        case AvailableApiMethods.put:
          response = await _dio!.put<String>(url, data: request.body);
          break;
        case AvailableApiMethods.delete:
          response = await _dio!.delete<String>(url, data: request.body);
          break;
        case AvailableApiMethods.patch:
          response = await _dio!.patch<String>(url, data: request.body);
          break;
      }

      if (debugMode) {
        _logger(
          url,
          response,
          body: request.body,
          queryParams: request.queryParameters,
        );
      }

      return response;
    } on DioError catch (dioError, stackTrace) {
      if (debugMode) {
        _logger(
          url,
          dioError.response,
          body: request.body,
          queryParams: request.queryParameters,
        );
      }

      throwRequestException(dioError, stackTrace);
      rethrow;
    }
  }

  void throwRequestException(DioError de, StackTrace st) {
    Map<String, Object?>? responseBody;
    String? responseValues;
    if (de.response?.data != null) {
      if ('${de.response?.data}'.isNotEmpty) {
        final jsonDecoded = jsonDecode(de.response!.data as String);
        if (jsonDecoded is Map) {
          responseBody = jsonDecoded as Map<String, Object?>;
        } else if (jsonDecoded is Iterable) {
          responseBody = Map<String, String>.fromEntries(jsonDecoded
              //ignore: avoid_types_on_closure_parameters
              .map((Object? e) => MapEntry<String, String>('', '$e')));
        }

        if (responseBody != null) {
          String errorText = '';
          responseBody.forEach((key, value) {
            if (value is String) {
              errorText = '$errorText$value\n';
            } else if (value is Map<String, Object?>) {
              value.forEach((key, value) {
                if (value is String) {
                  errorText = '$errorText$value\n';
                }
              });
            } else if (value is List<Object?>) {
              for (var item in value) {
                errorText = '$errorText$item\n';
              }
            }
          });
          if (errorText.isNotEmpty) {
            responseValues = errorText.trim();
          }
        }
      }
    }
    Error.throwWithStackTrace(
        RequestException(
          httpStatusCode: de.response?.statusCode ?? 0,
          response: responseBody,
          responseValues: responseValues,
          requestPath: de.requestOptions.path,
          requestData: de.requestOptions.data,
          requestMethod: de.requestOptions.method,
        ),
        st);
  }

  // ---------------------------------------------------------------------------
  void _logger(String url, Response? response,
      {Object? body, Object? queryParams}) {
    const logger = print;

    logger('V___________________________________');
    logger(
        '> METHOD: ${response?.requestOptions.method.toString() ?? 'Unknown method'}');
    logger(
        '> HEADERS: ${response?.requestOptions.headers.toString() ?? 'Unknown headers'}');
    logger('> PATH: ${response?.requestOptions.path.toString() ?? url}');
    if (body != null) {
      if (body is FormData) {
        logger('> BODY: ${body.fields}');
      } else {
        logger('> BODY: $body');
      }
    }
    if (queryParams != null) {
      logger('> QUERYPARAMS: $queryParams');
    }

    logger(
        '< STATUS: ${response?.statusCode?.toString() ?? 'Unknown statusCode'}');
    logger(
        '< RESPONSE: ${response?.data?.toString() ?? 'Response data is null'}');
    logger('^------------------------------------');
  }
}
