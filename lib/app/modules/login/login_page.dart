import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: controller.controllerNickName,
              decoration: InputDecoration(
                labelText: "Nome"
              ),
            ),
            RaisedButton(
              child: Text("Acessar"),
              onPressed: controller.acessar,
            ),
          ],
        ),
      ),
    );
  }
}
