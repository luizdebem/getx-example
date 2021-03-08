import 'package:get/get.dart';
import 'package:state_with_getx/models/User.dart';
import 'package:state_with_getx/services/AuthService.dart';

class AuthController extends GetxController {
  final currentLoggedUser = User().obs;

  login() async {
    final res = await AuthService().login();
    currentLoggedUser.value = res;
  }

  logout() {
    currentLoggedUser.value = null;
  }
}
