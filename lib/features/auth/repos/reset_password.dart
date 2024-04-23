import 'dart:convert';
import 'dart:developer';

import 'package:airoxal/utils/apis.dart';
import 'package:airoxal/utils/http_manager.dart';
import 'package:http/http.dart';

class ResetPasswordRepository {
  HttpManager httpManager = HttpManager(client: Client());

  Future<int> resetPassword(
      String email, String password, String confirmPassword) async {
    var dataMap = {
      "email": email,
      "password": password,
      "confirm_password": confirmPassword,
    };

    try {
      final response = await httpManager.hitApi(
        requestType: RequestType.postWithoutToken,
        url: GlobalApis.resetPasswordApi,
        parameter: dataMap,
      );

      final parsedJson = json.decode(response.body);

      log('this is reset password data statuscode ${response.statusCode}');
      log('this is reset password data body ${parsedJson}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final status = parsedJson['status'] ?? false;
        return status ? 0 : 1;
      } else {
        throw Exception('Failed to reset password');
      }
    } catch (e) {
      throw Exception('Failed to parse response: $e');
    }
  }
}
