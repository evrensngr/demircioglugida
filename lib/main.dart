// ignore_for_file: deprecated_member_use

import 'package:demfull/src/const/conts.dart';
import 'package:demfull/src/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: routes,
      initialRoute: 'welcome',
      theme: ThemeData(
        accentColor: accentColor,
        primaryColor: primaryColor,
        buttonColor: buttonColor,
        disabledColor: disabledColor,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
    );
  }
}
