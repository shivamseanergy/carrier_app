// ignore_for_file: file_names

import 'package:carrier_app/utils/Styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

import '../helper/SizeConfig.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isEmailFocused = false;
  bool isPasswordFocused = false;

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.white);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Card(
            color: Colors.white,
            // shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(15.0)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 70),
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
                                  fontSize: 3 * SizeConfig.textMultiplier)),
                          TextSpan(
                              text: "/ Sign up ",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 2.5 * SizeConfig.textMultiplier)),
                        ]),
                      )),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 5,
                  ),
                  // child: Text(
                  //   "Login / Sign Up",
                  //   style: TextStyle(fontSize: 22),
                  // ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      height: SizeConfig.heightMultiplier * 6,
                      child: FocusScope(
                        child: Focus(
                          onFocusChange: (Focus) {
                            if (Focus) {
                              setState(() {
                                isEmailFocused = true;
                              });
                            } else {
                              setState(() {
                                isEmailFocused = false;
                              });
                            }
                          },
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
                                color: Colors.grey[500],
                                fontSize: SizeConfig.textMultiplier * 1.8,
                              ),

                              prefixIcon: Padding(
                                  padding: EdgeInsets.all(
                                      SizeConfig.widthMultiplier * 2),
                                  child: Padding(
                                    padding: EdgeInsets.all(
                                        SizeConfig.imageSizeMultiplier * 1.5),
                                    child: isEmailFocused
                                        ? SvgPicture.asset(
                                            'lib/assets/User-Dark.svg')
                                        : SvgPicture.asset(
                                            'lib/assets/User.svg'),
                                  )),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    SizeConfig.widthMultiplier * 8),
                                borderSide:
                                    const BorderSide(color: Color(0xFFECECEC)),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    SizeConfig.widthMultiplier * 8),
                                borderSide:
                                    const BorderSide(color: Color(0xFFECECEC)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          SizeConfig.widthMultiplier * 8)),
                                  borderSide: const BorderSide(
                                      color: Color(0xFFECECEC))),
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 2.5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      height: SizeConfig.heightMultiplier * 6,
                      child: FocusScope(
                        child: Focus(
                          onFocusChange: (focus) {
                            if (focus) {
                              setState(() {
                                isPasswordFocused = true;
                              });
                            } else {
                              setState(() {
                                isPasswordFocused = false;
                              });
                            }
                          },
                          child: TextFormField(
                            decoration: InputDecoration(
                              // errorText: "cant be empty",
                              // enabledBorder: const UnderlineInputBorder(
                              //   borderSide: BorderSide(color: Colors.grey),
                              // ),
                              fillColor: AppTheme.textFieldFillColor,
                              filled: true,
                              hintText: "Password",

                              hintStyle: TextStyle(
                                color: Colors.grey[500],
                                fontSize: SizeConfig.textMultiplier * 1.5,
                              ),
                              prefixIcon: Padding(
                                  padding: EdgeInsets.all(
                                      SizeConfig.widthMultiplier * 2),
                                  child: Padding(
                                    padding: EdgeInsets.all(
                                        SizeConfig.imageSizeMultiplier * 1.5),
                                    child: isPasswordFocused
                                        ? SvgPicture.asset(
                                            'lib/assets/Password-Dark.svg')
                                        : SvgPicture.asset(
                                            'lib/assets/Password.svg'),
                                  )),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    SizeConfig.widthMultiplier * 8),
                                borderSide:
                                    const BorderSide(color: Color(0xFFECECEC)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          SizeConfig.widthMultiplier * 8)),
                                  borderSide: const BorderSide(
                                      color: Color(0xFFECECEC))),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    SizeConfig.widthMultiplier * 8),
                                borderSide:
                                    const BorderSide(color: Color(0xFFECECEC)),
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
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
                    borderRadius: BorderRadius.circular(
                        SizeConfig.heightMultiplier * 2.5),
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
    );
  }
}
