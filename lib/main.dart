import 'package:flutter/material.dart';
import 'package:novakid_app/auth_screens/freetrial_screen.dart';
import 'package:novakid_app/auth_screens/phone_login.dart';
import 'package:novakid_app/personal_info/personal_info.dart';
import 'package:novakid_app/screens/detail_page.dart';
import 'package:novakid_app/screens/homepage.dart';
import 'package:novakid_app/splash_screens/splash_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen1(),
      routes: {
        "/phonenumber": (context) => PhoneLogin(),
        "/freetrialepage": (context) => FreeTrialLesson(),
        "/homepage": (context) => HomePage(),
        "/userdetailpage": (context) => UserDetailPage(),
         "/personalinfo": (context) => Personalinfo(),
      },
    );
  }
}
