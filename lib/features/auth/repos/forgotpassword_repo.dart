import 'dart:convert';
import 'dart:developer';

import 'package:airoxal/features/auth/models/forgot_password_error_model.dart';
import 'package:airoxal/features/auth/models/forgot_password_success_model.dart';
import 'package:airoxal/utils/apis.dart';
import 'package:airoxal/utils/http_manager.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart';

class ForgotPasswordRepository {
  HttpManager httpManager = HttpManager(client: Client());

  Future<Either<ForgotPasswordErrorModel, ForgotPasswordSuccessModel>>
      hitForgotPasswordApi(String email) async {
    var dataMap = {
      "email": email,
    };
    try {
      final response = await httpManager.hitApi(
          requestType: RequestType.postWithoutToken,
          url: GlobalApis.forgotPasswordApi,
          parameter: dataMap);

      if (response.statusCode == 200 || response.statusCode == 201) {
        log('forgot password Repository if method success');
        log(response.body);
        var actualdata = jsonDecode(response.body);
        if (actualdata.containsKey('success')) {
          if (actualdata['success'] == 'true') {
            // Note the comparison with 'true' as string
            var successModel = ForgotPasswordSuccessModel.fromJson(actualdata);
            return Right(successModel);
          } else {
            var failedModel = ForgotPasswordErrorModel.fromJson(actualdata);
            return Left(failedModel);
          }
        } else {
          throw Exception('Invalid response format');
        }
      } else {
        log(response.statusCode.toString());
        log('forgot password Repository class else method not 200');
        log('this is actual failed response : ${response.body}');
        throw Exception('Failed to hit forgot password API');
      }
    } catch (e) {
      log('Login Repository class else method not 200');
      throw Exception(e);
    }
  }
}
