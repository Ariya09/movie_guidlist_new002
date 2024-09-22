import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:movie_guidlist_new/modules/crate_member/models/register_payload.dart';
import 'package:movie_guidlist_new/service/api_intercepter.dart';

import '../../../service/constans.dart';

class RegisterRepository {
  Future<Response?> registerMember(RegisterPayload? registerPayload) async {
    Response? response;
    try {
      response = await movieApi
          .get('${api}/register.php', data: registerPayload!.toJson())
          .onError((DioException error, stackTrace) {
        log("Error: ${error.response?.data}");

        return error.response?.data;
      });

      log("Data form messege => ${response.data}");
      if (response.statusCode == 200) {
        // var _accessToken = "";
      }

      return response;
    } catch (e) {
      log("ooo");
      return response;
    }
  }
}
