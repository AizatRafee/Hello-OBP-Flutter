import 'dart:math';

import 'package:ez/inherited/login_provider.dart';
import 'package:ez/ui/page/login/login_widget.dart';
import 'package:ez/ui/widgets/animated_wave.dart';
import 'package:ez/utils/uidata.dart';
import 'package:flutter/material.dart';

enum LoginValidationType { username, pass }

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  final scaffoldState = GlobalKey<ScaffoldState>();

  Widget loginScaffold() => LoginProvider(
        errorCallback: showValidationError,
        child: Scaffold(
          key: scaffoldState,
          backgroundColor: Colors.white,
          body: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: UIData.bgGradients,
              ))),
              onBottom(AnimatedWave(
                height: 180,
                speed: 1.0,
              )),
              onBottom(AnimatedWave(
                height: 120,
                speed: 0.9,
                offset: pi,
              )),
              onBottom(AnimatedWave(
                height: 220,
                speed: 1.2,
                offset: pi / 2,
              )),
              LoginWidgets()
            ],
          ),
        ),
      );

  showValidationError(LoginValidationType type) {
    scaffoldState.currentState.showSnackBar(SnackBar(
      content: Text(type == LoginValidationType.username
          ? UIData.enter_valid_username
          : UIData.enter_valid_password),
      duration: Duration(seconds: 2),
    ));
  }

  onBottom(Widget child) => Positioned.fill(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: child,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return loginScaffold();
  }
}
