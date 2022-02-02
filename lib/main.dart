import 'package:e_commerce_app/Screens/splash_Screen.dart';
import 'package:e_commerce_app/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      theme: theme(),
      home: SplashScreen(),
      // initialRoute: SplashScreen.routesName,
      // routes: routes,
    );
  }
}
