import 'package:flutter/material.dart';

import '../../shared/theme.dart';
import '../widgets/costum_text_form_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  // Form Controller
  final TextEditingController nameController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');
  //
  @override
  Widget build(BuildContext context) {
    // Icon Back
    Widget iconBack() {
      return GestureDetector(
        // belum ada navigation
        onTap: () {},
        child: Container(
          margin: const EdgeInsets.only(bottom: 24),
          height: 24,
          width: 24,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/icon-back.png'),
            ),
          ),
        ),
      );
    }

    // Title
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(bottom: 8),
        child: Text(
          "Jôbizz",
          style: blackTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semiBold,
            color: kPrimaryColor,
          ),
        ),
      );
    }

    // Register & Description
    Widget loginText() {
      return Container(
        margin: const EdgeInsets.only(bottom: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 8),
              child: Text(
                "Registration 👍",
                style: blackTextStyle.copyWith(
                    fontSize: 24, fontWeight: semiBold, color: kBlackColor),
              ),
            ),
            Text(
              "Let’s Register. Apply to jobs!",
              style: grayTextStyle.copyWith(),
            )
          ],
        ),
      );
    }

    // Form Widget
    Widget inputSection() {
      // Name Input Widget
      Widget inputEmail() {
        return CostumTextField(
          iconUrl: 'assets/icon_username.png',
          hintText: "E-Mail",
          controller: nameController,
          obsecureText: false,
        );
      }

      // Email Widget
      Widget inputPassword() {
        return CostumTextField(
          iconUrl: 'assets/icon_password.png',
          hintText: "password",
          controller: passwordController,
          obsecureText: true,
        );
      }

      //
      return Container(
        padding: const EdgeInsets.only(top: 16, bottom: 16),
        child: Column(
          children: [
            inputEmail(),
            inputPassword(),
          ],
        ),
      );
    }

    //
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                iconBack(),
                title(),
                loginText(),
                inputSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
