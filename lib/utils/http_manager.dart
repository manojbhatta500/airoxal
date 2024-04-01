import 'dart:convert';

import 'package:airoxal/utils/access_token.dart';
import 'package:http/http.dart';

enum RequestType {
  getWithToken,
  postWithToken,
  deleteWithToken,
  patchWithToken,
  postWithoutToken,
}

class HttpManager {
  final Client client;
  HttpManager({required this.client});

  Future<Response> hitApi(
      {required RequestType requestType,
      required String url,
      dynamic parameter}) {
    // Map<String, String> headingWithoutToken = {
    //   'Authorization': 'Bearer //tokenvariable',
    // };
    Map<String, String> headingWithToken = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${AccessToken.accessToken}',
    };
    switch (requestType) {
      case RequestType.postWithToken:
        return client.post(Uri.parse(url),
            headers: headingWithToken, body: parameter);
      case RequestType.getWithToken:
        return client.get(Uri.parse(url), headers: headingWithToken);
      case RequestType.patchWithToken:
        return client.post(Uri.parse(url),
            headers: headingWithToken, body: parameter);
      case RequestType.deleteWithToken:
        return client.post(Uri.parse(url),
            headers: headingWithToken, body: parameter);
      case RequestType.postWithoutToken:
        return client.post(Uri.parse(url),
            headers: headingWithToken, body: jsonEncode(parameter));
      default:
        throw Exception("sorry it's not valid token");
    }
  }
}
