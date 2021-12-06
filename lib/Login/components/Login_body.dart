import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_welcome/Screen/welcome_screen.dart';


class Body_Login extends StatefulWidget {
  const Body_Login({Key? key}) : super(key: key);

  @override
  State<Body_Login> createState() => _Body_LoginState();
}

class _Body_LoginState extends State<Body_Login> {
  String email = "";
  String password = "";
  final _formKey  = GlobalKey<FormState>();

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
                    key: _formKey,
                    autovalidateMode: AutovalidateMode.always,
                    child: Column(
                      children: [
                        TextFormField(
                          initialValue: "haseeb@gmail.com",
                          decoration: const InputDecoration(
                            hintText: "Your email",
                            prefixIcon: (Icon(
                              Icons.person,
                              color: Colors.black38,
                            )),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black38,),
                            )
                          ),
                          onSaved: (String? value) { // value = null
                          if(value != null){
                            email = value;
                            }
                          },
                          validator: (value) {
                            if (value == null || value.length <= 3) {
                              return 'Please enter your name';
                            }
                            return null;
                          },

                        ),
                        SizedBox(
                          height: size.height * 0.05,
                        ),
                        TextFormField(
                          initialValue: "12345678",
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
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black38,),
                            )
                          ),
                         onChanged: (String value) {
                           setState(() {
                             password = value;
                           });
                         },
                          onSaved:(String?  value) {
                            if(value!=null){
                              password = value;
                            }
                          } ,
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Password cannot be empty';
                            }
                            else if(value.length < 6){
                              return "Password length should be at least 6";
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: size.height * 0.1,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if(_formKey.currentState!.validate()){
                             _formKey.currentState!.save();
                             print("$email, $password");
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> WelcomeScreen()));
                             ScaffoldMessenger.of(context).showSnackBar(
                                 const SnackBar(content: Text('VALIDATION PASSED')));
                            }

                            else{
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('VALIDATION ERROR')));
                            }
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

