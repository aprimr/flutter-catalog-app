import 'package:catalog_app/scrreens/cart.dart';
import 'package:catalog_app/scrreens/home.dart';
import 'package:catalog_app/scrreens/login_screen.dart';
import 'package:catalog_app/utils/routes.dart';
import 'package:catalog_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme(),
      darkTheme: AppTheme.darkTheme(),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.homeRoute: (context) => Home(),
        MyRoutes.loginRoute: (context) => LoginScreen(),
        MyRoutes.cartRoute: (context) => MyCart(),
      },
    );
  }
}
