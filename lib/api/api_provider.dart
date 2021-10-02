import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mhealth/model/user_model.dart';

String apiURL = 'apiternak.000webhostapp.com';

class ApiProvider {
  //method untuk login yang membutuhkan 2 parameter yaitu
  //username dan password
  //dan mereturn data user
  Future login(String newUsername, String newPassword) async {
    try {
      //panggil api dengan method post dengan path login.php
      //dan pada body diisi dengan map username dan password
      final response = await http.post(Uri.http(apiURL, 'login.php'),
          body: {'username': newUsername, 'password': newPassword});

      //cek jika pemanggilan api tersebut berhasil dengan kode 200
      //jika status code 200 maka akan return data user
      if (response.statusCode == 200) {
        final result = jsonDecode(response.body);

        return User.fromJson(result);
      } else {
        throw 'error di get api';
      }
    } catch (e) {
      return e;
    }
  }
}
