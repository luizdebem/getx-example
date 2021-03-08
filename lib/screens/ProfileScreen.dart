import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_with_getx/controllers/AuthController.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AuthController authController = Get.find<AuthController>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Edição de perfil!"),
      ),
      body: Container(
          child: Obx(
        () => Center(
          child: authController.currentLoggedUser.value?.name != null
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        "Nome: ${authController.currentLoggedUser.value?.name}"),
                    Text(
                        "Usuário: ${authController.currentLoggedUser.value?.username}"),
                    Text(
                        "Email: ${authController.currentLoggedUser.value?.email}"),
                    Text(
                        "Telefone: ${authController.currentLoggedUser.value?.phone}"),
                    Text(
                        "Website: ${authController.currentLoggedUser.value?.website}"),
                  ],
                )
              : Text("Por favor faça login."),
        ),
      )),
    );
  }
}
