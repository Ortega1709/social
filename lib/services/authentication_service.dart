import 'dart:convert';

import 'package:http/http.dart';
import 'package:social/models/user_model.dart';
import 'package:social/utils/constants.dart';

// authentication repository
class AuthenticationService {

  final _endpoint = "http://${ Constants.localhost }/api/collections/users/auth-with-password";

  Future<UserModel?> Authentication({required String email, required String password}) async {

    Object body = {"identity": email, "password": password};

    try {
      Response response = await post(Uri.parse(_endpoint), body: body);
      if (response.statusCode == 200) {

        final data = json.decode(response.body);
        return UserModel.fromJson(data["record"]);

      } else {
        return null;
      }
    } catch (e) {
      print(e);
    }
    return null;
  }

}

