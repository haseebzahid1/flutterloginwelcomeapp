import 'package:flutter/material.dart';
import 'package:login_welcome/Login/components/Login_body.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:Body_Login(),
    );
  }
}
