import 'package:findjob/shared/theme.dart';
import 'package:flutter/material.dart';

class ContinueWithLogin extends StatelessWidget {
  final String imageUrl;
  final String title;

  const ContinueWithLogin(
      {Key? key, required this.imageUrl, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 16, left: 16),
      margin: const EdgeInsets.only(top: 32),
      child: Row(
        children: [
          Container(
            width: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl),
              ),
            ),
            child: Image.asset(imageUrl),
          ),
          Text(
            title,
            style: blackTextStyle.copyWith(
                fontSize: 13, color: kGrayColor, fontWeight: medium),
          )
        ],
      ),
    );
  }
}
