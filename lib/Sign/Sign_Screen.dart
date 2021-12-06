import 'package:flutter/material.dart';
import 'package:login_welcome/Login/components/Login_body.dart';
import 'package:login_welcome/Sign/components/Sign_body.dart';

class Sign extends StatelessWidget {
  const Sign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:Sign_Login(),
    );
  }
}
