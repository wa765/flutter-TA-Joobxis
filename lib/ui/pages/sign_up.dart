import 'package:findjob/shared/theme.dart';
import 'package:findjob/ui/widgets/continue_with.dart';
import 'package:findjob/ui/widgets/costum_button.dart';
import 'package:findjob/ui/widgets/costum_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);
  // Controller Form
  final TextEditingController nameController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');
  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController confirmPasswrodController =
      TextEditingController(text: '');
  //
  @override
  Widget build(BuildContext context) {
    //
    // Icon Back
    Widget iconBack() {
      return GestureDetector(
        // belum ada navigation
        onTap: () {
          Navigator.pop(context);
        },
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
    Widget registerText() {
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
            ),
          ],
        ),
      );
    }

    // Input Section
    Widget inputSection() {
      // Name Input Widget
      Widget inputName() {
        return CostumTextField(
          iconUrl: 'assets/icon_username.png',
          hintText: "Full Name",
          controller: nameController,
          obsecureText: false,
        );
      }

      // Email Input Widget
      Widget inputEmail() {
        return CostumTextField(
          iconUrl: "assets/icon_email.png",
          hintText: "E-mail",
          controller: emailController,
          obsecureText: false,
        );
      }

      // Password Input Widget
      Widget inputPassword() {
        return CostumTextField(
          iconUrl: "assets/icon_password.png",
          hintText: "Password",
          controller: passwordController,
          obsecureText: true,
        );
      }

      // Submit Button
      Widget submitButton() {
        return CostumButton(
          title: "Register",
          onPressed: () {
            Navigator.pushNamed(context, 'Home_Page');
          },
          margin: const EdgeInsets.only(top: 16),
        );
      }

      //
      return Container(
        padding: const EdgeInsets.only(top: 16, bottom: 16),
        child: Column(
          children: [
            inputName(),
            inputEmail(),
            inputPassword(),
            submitButton(),
          ],
        ),
      );
    }

    // widget continue
    // ini belum kesolved
    // Widget ContinueLogin() {
    //   return ContinueWithLogin(
    //       imageUrl: "assets/line.png", title: "Or Continue With;");
    // }

    // Have an account ?
    Widget haveAccount() {
      return Container(
        margin: const EdgeInsets.only(top: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Have an account ? ",
              style: grayTextStyle.copyWith(fontSize: 14),
            ),
            GestureDetector(
              child: Text(
                "Log in",
                style: blackTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                    color: kPrimaryColor,
                    decoration: TextDecoration.underline),
              ),
              onTap: () {},
            )
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
                registerText(),
                inputSection(),
                haveAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
