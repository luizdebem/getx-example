import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart' as http;
import 'package:state_with_getx/models/User.dart';

class AuthService {
  // faço uma request e retorno um objeto User
  Future<User> login() async {
    final res = await http.Client().get(Uri.https(
        "jsonplaceholder.typicode.com", "users/${Random().nextInt(9) + 1}"));
    if (res.statusCode == 200) {
      return User.fromJson(jsonDecode(res.body));
    }
    return null;
  }
}
