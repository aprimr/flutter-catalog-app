import 'package:catalog_app/scrreens/home.dart';
import 'package:catalog_app/scrreens/login_screen.dart';
import 'package:catalog_app/scrreens/signup_screen.dart';
import 'package:catalog_app/utils/routes.dart';
import 'package:catalog_app/utils/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: AppTheme.lightTheme(),
      darkTheme: AppTheme.darkTheme(),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.homeRoute: (context) => Home(),
        MyRoutes.loginRoute: (context) => LoginScreen(),
        MyRoutes.signupRoute: (context) => SignupScreen(),
      },
    );
  }
}
