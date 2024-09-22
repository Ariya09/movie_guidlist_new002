import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:movie_guidlist_new/service/constans.dart';

var movieApi = Dio(
  BaseOptions(
    baseUrl: api,
    connectTimeout: const Duration(milliseconds: 60000),
    receiveTimeout: const Duration(milliseconds: 60000),
  ),
)..interceptors.add(
    InterceptorsWrapper(
      //Request
      onRequest: (options, handler) async {
        //   options.headers['authorization'] = "Bearer $token";
        options.headers['content-type'] = 'application/json';
        options.headers['accept-language'] = 'th';
        //   options.headers['encrypteddevice'] = deviceId;

        // options.headers['Authorization'] = 'Bearer $_accessToken';
        if (kDebugMode) {
          debugPrint('REQUEST[${options.method}] => PATH: ${options.path}');
          debugPrint('HEADER[${options.headers}]');
          final payload = options.data;
          if (payload is FormData) {
            printDioFormData(payload);
          } else if (payload != null) {
            debugPrint('PAYLOAD => ${options.data}');
          }
        }
        return handler.next(options);
      },

      //Response from api
      onResponse: (response, handler) {
        debugPrint('FULL PATH: ${response.realUri}');
        debugPrint('RESPONSE[${response.statusCode}]');
        debugPrint('DATA: ${response.data}');
        debugPrint('====================================================\n');
        return handler.next(response);
      },

      //Error from api
      onError: (DioException e, handler) async {
        log("Error: ${e.response?.data}");

        return handler.next(e);
      },
    ),
  );

void printDioFormData(FormData formData) {
  try {
    for (var item in formData.fields) {
      debugPrint('[FIELD] = ${item.key}: ${item.value}');
    }
    for (var item in formData.files) {
      debugPrint('[FILE] = ${item.key}: "${item.value.filename}"');
    }
  } catch (e) {
    debugPrint('FormData: $formData');
  }
}
