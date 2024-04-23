import 'dart:convert';
import 'dart:developer';

import 'package:airoxal/utils/apis.dart';
import 'package:airoxal/utils/http_manager.dart';
import 'package:http/http.dart';

class VerifyOtp {
  HttpManager httpManager = HttpManager(client: Client());

  Future<int> hitVerifyOtpApi(String email, String otp) async {
    var dataMap = {"email": email, "otp": otp};
    try {
      final response = await httpManager.hitApi(
          requestType: RequestType.postWithoutToken,
          url: GlobalApis.verifyOtpApi,
          parameter: dataMap);

      final parsedJson = json.decode(response.body);

      log('this is repo class verify otp ${VerifyOtp}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final success = parsedJson['success'] ?? false;
        log('this is repo class verify otp  bool ${success}');

        return success ? 1 : 0;
      } else {
        throw Exception('Failed to hit verify OTP API');
      }
    } catch (e) {
      throw Exception('Failed to parse response: $e');
    }
  }
}
