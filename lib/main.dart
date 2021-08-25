import 'package:carrier_app/Login.dart';
import 'package:carrier_app/pages/Home.dart';
import 'package:carrier_app/utils/Styling.dart';
import 'package:flutter/material.dart';

import 'helper/SizeConfig.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return KeyboardDismisser(
                gestures: const [
                  GestureType.onTap,
                  GestureType.onPanUpdateDownDirection,
                ],
                child: MaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(
                      primaryColor: AppTheme.appPrimaryColor,
                      primaryTextTheme: const TextTheme(
                          headline6: TextStyle(
                        color: Colors.white,
                      ))
                      // textTheme: Colors.white
                      ),
                  title: 'App',
                  home: Login(),
//     theme: ThemeData(
//         primarySwatch: Colors.red,
// ),
                  routes: <String, WidgetBuilder>{
                    // // Set routes for using the Navigator.

                    '/login': (BuildContext context) => Login(),
                    '/home': (BuildContext context) => Home(),

                    // approveLeave
                  },
                ));
          },
        );
      },
    );
  }
}
