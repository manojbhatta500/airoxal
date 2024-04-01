import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:airoxal/features/auth/models/signin_failed_model.dart';
import 'package:airoxal/features/auth/models/signin_success_model.dart';
import 'package:airoxal/utils/apis.dart';
import 'package:airoxal/utils/http_manager.dart';
import 'package:http/http.dart';

class SignInRepository {
  HttpManager httpManager = HttpManager(client: Client());

  Future<Either<SignInFaileModel, SignInSuccessModel>> signInAction(
      {required String email,
      required String name,
      required String password}) async {
    var dataMap = {
      "email": email,
      "name": name,
      "password": password,
    };
    try {
      final response = await httpManager.hitApi(
          requestType: RequestType.postWithoutToken,
          url: GlobalApis.signupApi,
          parameter: dataMap);

      if (response.statusCode == 200 || response.statusCode == 201) {
        log('signin Repository if  method  success');
        log(response.body);
        var actualdata = jsonDecode(response.body);
        var successModel = SignInSuccessModel.fromJson(actualdata);
        return Right(successModel);
      } else {
        log(response.statusCode.toString());
        log('signin Repository class else method not 200');
        log('this is actual failed ressponse : ${response.body}');
        var actualfaileddata = jsonDecode(response.body);
        var failedmodel = SignInFaileModel.fromJson(actualfaileddata);
        return Left(failedmodel);
      }
    } catch (e) {
      log('signin Repository class else method not 200');
      throw Exception(e);
    }
  }
}
