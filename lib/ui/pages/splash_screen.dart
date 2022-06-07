import 'package:findjob/shared/theme.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [kPrimaryColor, kBlackColor],
          ),
        ),
        child: Center(
          child: Image.asset(
            "assets/logo.png",
            width: MediaQuery.of(context).size.width / 2.5,
          ),
        ),
      ),
    );
  }
}
