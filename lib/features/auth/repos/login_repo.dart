import 'dart:convert';
import 'dart:developer';

import 'package:airoxal/features/auth/models/login_failed_model.dart';
import 'package:airoxal/features/auth/models/login_success_model.dart';
import 'package:airoxal/utils/apis.dart';
import 'package:airoxal/utils/http_manager.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart';

class LoginRepository {
  HttpManager httpManager = HttpManager(client: Client());

  Future<Either<LoginFailedModel, LoginSuccessModel>> logInAction(
      {required String email, required String password}) async {
    var dataMap = {
      "email": email,
      "password": password,
    };
    try {
      final response = await httpManager.hitApi(
          requestType: RequestType.postWithoutToken,
          url: GlobalApis.loginApi,
          parameter: dataMap);
      log('this is login repository status ${response.statusCode}');
      if (response.statusCode == 200 || response.statusCode == 201) {
        log('login Repository if method success');
        log(response.body);
        var actualData = jsonDecode(response.body);
        if (actualData['success'] == 'True') {
          var successModel = LoginSuccessModel.fromJson(actualData);
          return Right(successModel);
        } else {
          var failedModel = LoginFailedModel.fromJson(actualData);
          return Left(failedModel);
        }
      } else {
        log(response.statusCode.toString());
        log('Login Repository class else method not 200');
        log('this is actual failed response : ${response.body}');
        var actualFailedData = jsonDecode(response.body);
        var failedModel = LoginFailedModel.fromJson(actualFailedData);
        return Left(failedModel);
      }
    } catch (e) {
      log('Login Repository class else method not 200');
      throw Exception(e);
    }
  }
}
