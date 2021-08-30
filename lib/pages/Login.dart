// ignore_for_file: file_names

import 'package:carrier_app/utils/Styling.dart';
import 'package:flutter/material.dart';

import '../helper/SizeConfig.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Card(
            // shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(15.0)),
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Image.asset(
                'lib/assets/LoginLogo.png',
                height: SizeConfig.imageSizeMultiplier * 35,
                width: SizeConfig.imageSizeMultiplier * 45,
              ),
              Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text.rich(
                    TextSpan(children: [
                      TextSpan(
                          text: "Login",
                          style: TextStyle(
                              color: AppTheme.blackColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 2.5 * SizeConfig.textMultiplier)),
                      TextSpan(
                          text: "/ Sign up ",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 2 * SizeConfig.textMultiplier)),
                    ]),
                  )),
              // child: Text(
              //   "Login / Sign Up",
              //   style: TextStyle(fontSize: 22),
              // ),

              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: SizeConfig.heightMultiplier * 6,
                  child: TextFormField(
                    decoration: InputDecoration(
                      // errorText: "cant be empty",
                      // enabledBorder: const UnderlineInputBorder(
                      //   borderSide: BorderSide(color: Colors.grey),
                      // ),
                      fillColor: AppTheme.textFieldFillColor,
                      filled: true,
                      hintText: "Email",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: SizeConfig.textMultiplier * 1.5,
                      ),

                      prefixIcon: Padding(
                        padding: EdgeInsets.all(SizeConfig.widthMultiplier * 2),
                        child: Icon(
                          Icons.email,
                          size: SizeConfig.imageSizeMultiplier * 4,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            SizeConfig.widthMultiplier * 8),
                        borderSide: const BorderSide(),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(SizeConfig.widthMultiplier * 8)),
                          borderSide: BorderSide(color: Colors.grey)),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: SizeConfig.heightMultiplier * 6,
                  child: TextFormField(
                    decoration: InputDecoration(
                      // errorText: "cant be empty",
                      // enabledBorder: const UnderlineInputBorder(
                      //   borderSide: BorderSide(color: Colors.grey),
                      // ),
                      fillColor: AppTheme.textFieldFillColor, filled: true,
                      hintText: "Password",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: SizeConfig.textMultiplier * 1.5,
                      ),
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(SizeConfig.widthMultiplier * 2),
                        child: Icon(
                          Icons.lock,
                          size: SizeConfig.imageSizeMultiplier * 4,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            SizeConfig.widthMultiplier * 8),
                        borderSide: const BorderSide(),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(SizeConfig.widthMultiplier * 8)),
                          borderSide: BorderSide(color: Colors.grey)),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                        fontSize: SizeConfig.textMultiplier * 1.5,
                        color: AppTheme.appPrimaryColor),
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 5,
              ),
              Material(
                // needed
                color: AppTheme.appPrimaryColor,
                borderRadius:
                    BorderRadius.circular(SizeConfig.heightMultiplier * 2.5),
                child: InkWell(
                  onTap: () {
                    // print("goto home");
                    // if (!_autoValidate) {

                    // } else {
                    // }
                    // setState(() => this._status = 'loading');
                    Navigator.of(context).pushReplacementNamed('/home');
                  }, // needed
                  child: Container(
                    height: SizeConfig.heightMultiplier * 5,
                    width: SizeConfig.widthMultiplier * 45,
                    decoration: const BoxDecoration(

                        // gradient: LinearGradient(
                        //     colors: [Colors.orange[700], Colors.orange[800]],
                        //     begin: Alignment.centerRight,
                        //     end: Alignment.centerLeft),
                        ),
                    child: Center(
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: SizeConfig.textMultiplier * 1.8,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    ));
  }
}
