import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_welcome/Login/Login_Screen.dart';
import 'package:login_welcome/Sign/Sign_Screen.dart';

class Body_Screen extends StatelessWidget {
  const Body_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,

      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/images/main_top.png",
              width: size.width * 0.3,
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Image.asset(
              "assets/images/main_bottom.png",
              width: size.width * 0.2,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "Welcome to EDU",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: size.height * 0.03,),
                SvgPicture.asset(
                  "assets/icons/chat.svg",
                  height: size.height * 0.5,
                ),
                SizedBox(height: size.height * 0.06,),
                Container(
                  width: size.width * 0.8,
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );
                    },
                    child: Container(

                        child: Text(

                      "Login",
                      style: TextStyle(color: Colors.white),
                    )),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.03,),
                Container(
                  width: size.width * 0.8,
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Sign()),
                      );
                    },
                    child: Container(
                        child: Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.white),
                    )),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey,
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
