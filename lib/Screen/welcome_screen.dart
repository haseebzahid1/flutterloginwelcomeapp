import 'package:flutter/material.dart';
import 'package:login_welcome/Screen/Components/body.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Body_Screen(),
    );
  }
}
