import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_with_getx/controllers/AuthController.dart';
import 'package:state_with_getx/controllers/CounterController.dart';
import 'package:state_with_getx/screens/ProfileScreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterController counterController = Get.put(CounterController());
    final AuthController authController = Get.put(AuthController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Aplicativo MONSTRO"),
        actions: [
          IconButton(
            icon: Icon(Icons.login),
            tooltip: 'Login',
            onPressed: authController.login,
          ),
          IconButton(
            icon: Icon(Icons.logout),
            tooltip: 'Logout',
            onPressed: authController.logout,
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Obx(() => Text(
                    "Olá, ${authController.currentLoggedUser.value?.name ?? "anônimo"}! You have pushed the button this many times:",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  )),
              Obx(() => Text(
                    "${counterController.counter}",
                    style: TextStyle(fontSize: 25.0),
                  )),
              SizedBox(
                height: 25.0,
              ),
              FlatButton(
                onPressed: () => Get.to(ProfileScreen()),
                color: Colors.grey,
                child: Text("Ir para outra página!"),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counterController.incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
