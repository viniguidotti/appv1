import 'package:appv1/constants.dart';
import 'package:appv1/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
            headline4:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            headline5:
                TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
            button: TextStyle(color: kPrimaryColor, fontSize: 16)),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white.withOpacity(.2))),
        ),
      ),
      home: WelcomeScreen(),
    );
  }
}
