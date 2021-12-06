import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_welcome/Login/Login_Screen.dart';



class Sign_Login extends StatefulWidget {
  const Sign_Login({Key? key}) : super(key: key);

  @override
  State<Sign_Login> createState() => _Sign_LoginState();
}

class _Sign_LoginState extends State<Sign_Login> {
  String userName = "";
  String email = "";
  String Password = "";
  String confirmPassword = "";
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
              "assets/images/signup_top.png",
              width: size.width * 0.3,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              "assets/images/main_bottom.png",
              width: size.width * 0.3,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Text("Sign UP",style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                SizedBox(
                  height: size.height * 0.03,
                ),
                SvgPicture.asset(
                  "assets/icons/signup.svg",
                  height: size.height * 0.30,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Form(
                    key: _formKey,
                    autovalidateMode: AutovalidateMode.always,
                    child: Column(
                      children: [
                        TextFormField(
                          initialValue: "Haseeb",
                          decoration: const InputDecoration(
                            hintText: "UserName",
                            prefixIcon: (Icon(
                              Icons.person,
                              color: Colors.black38,
                            )),
                          ),
                          onSaved: (String? value) { // value = null
                            if(value != null){
                              email = value;
                            }
                          },
                          validator: (value) {
                            if (value == null || value.length <= 3) {
                              return 'Please enter your UserName';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        TextFormField(
                          initialValue: "mmianzahid333gmail.com",
                          decoration: const InputDecoration(
                            hintText: "Email",
                            prefixIcon: (Icon(
                              Icons.person,
                              color: Colors.black38,
                            )),
                          ),
                          onSaved: (String? value) { // value = null
                            if(value != null){
                              userName = value;
                            }
                          },
                          validator: (value) {
                            if (value == null || value.length <= 3) {
                              return 'Please enter your Email';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        TextFormField(
                          initialValue: "123456",
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
                          onChanged: (String value) {
                            setState(() {
                              Password = value;
                            });
                          },
                          onSaved:(String?  value) {
                            if(value!=null){
                              Password = value;
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
                          height: size.height * 0.03,
                        ),
                        TextFormField(
                          initialValue: "123456",
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: "Confirm Password",
                            labelText: "Confirm Password",
                            prefixIcon: (Icon(
                              Icons.person,
                              color: Colors.black38,
                            )),
                            suffixIcon: Icon(
                              Icons.visibility,
                              color: Colors.black38,
                            ),

                          ),
                          onChanged: (String value) {
                            setState(() {
                              confirmPassword = value;
                            });
                          },
                          onSaved:(String?  value) {
                            if(value!=null){
                              confirmPassword = value;
                            }
                          } ,
                          validator: (String? value){
                            if(value==null  || value==""){
                              return "Confirm password is required";
                            }
                            else if(value.length< 6){
                              return "password must 6 charactor long";
                            }
                            else if(Password != confirmPassword){
                              return "password not match";
                            }
                              return null;
                          }
                        ),
                        SizedBox(
                          height: size.height * 0.1,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if(_formKey.currentState!.validate()){
                              _formKey.currentState!.save();
                              print("$userName,$email, $Password,$confirmPassword");
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Login()));
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
                              " SignUp",
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



