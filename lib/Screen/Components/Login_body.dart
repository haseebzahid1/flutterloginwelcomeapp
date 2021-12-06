import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body_Login extends StatelessWidget {
  const Body_Login({Key? key}) : super(key: key);

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
            bottom: 0,
            right: 0,
            child: Image.asset(
              "assets/images/login_bottom.png",
              width: size.width * 0.3,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Text("Login"),
                SizedBox(
                  height: size.height * 0.03,
                ),
                SvgPicture.asset(
                  "assets/icons/login.svg",
                  height: size.height * 0.35,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Form(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: "Your email",
                            prefixIcon: (Icon(
                              Icons.person,
                              color: Colors.black38,
                            )),
                            // border: OutlineInputBorder(
                            //     borderSide: BorderSide(color: Colors.black38,),
                            // )
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.05,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: "Password",
                            prefixIcon: (Icon(
                              Icons.person,
                              color: Colors.black38,
                            )),
                            suffixIcon: Icon(
                              Icons.visibility,
                              color: Colors.black38,
                            ),
                            // border: OutlineInputBorder(
                            //     borderSide: BorderSide(color: Colors.black38,),
                            // )
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.1,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));Logi
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          style: TextButton.styleFrom(
                            minimumSize: const Size(370, 50),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.04,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Text(
                              "Already have an account?",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Colors.blue,
                              ),
                            ),
                            Text(
                              " Login",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.blueAccent,
                              ),
                            ),
                          ],
                        )
                      ],
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
