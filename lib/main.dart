import 'package:findjob/ui/pages/indicator_slider.dart';
import 'package:findjob/ui/pages/sign_up.dart';

import 'package:findjob/ui/pages/splash_screen.dart';
import 'package:flutter/material.dart';

import 'ui/pages/login_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => LoginPage(),
        // 'OnBoarding_Screen': (context) => const OnBoarding(),
        // 'SignUp_Screen': (context) => const SignUpPage(),
      },
    );
  }
}
