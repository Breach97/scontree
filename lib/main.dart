import 'package:flutter/material.dart';
import 'package:scontree/interface/screen/home_screen.dart';
import 'package:scontree/interface/screen/login_screen.dart';
import 'package:scontree/interface/screen/privacy_screen.dart';
import 'package:scontree/references.dart';
import 'package:swatcher/swatcher.dart';

void main() {
  runApp(const Scontree());
}

class Scontree extends StatelessWidget {
  const Scontree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: References.appName,
      theme: ThemeData(
        fontFamily: "Calibri",
        primarySwatch: Swatcher.createMaterialColor(References.primaryColor),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(References.generalRadius),
              ),
            ),
            textStyle: MaterialStateProperty.all<TextStyle>(
              TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                fontFamily: "Calibri",
              ),
            ),
            padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.all(8.0),
            ),
          ),
        ),
      ),
      initialRoute: LoginScreen.route,
      routes: <String, Widget Function(BuildContext)>{
        LoginScreen.route: (BuildContext context) => LoginScreen(),
        HomeScreen.route: (BuildContext context) => HomeScreen(),
        PrivacyScreen.route: (BuildContext context) => PrivacyScreen(),
      },
    );
  }
}
