import 'package:findjob/shared/theme.dart';
import 'package:flutter/material.dart';

class CostumButton extends StatelessWidget {
  //
  final String title;
  final double width;
  final Function() onPressed;
  final EdgeInsets margin;
  //
  const CostumButton({
    Key? key,
    required this.title,
    this.width = double.infinity,
    required this.onPressed,
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: MediaQuery.of(context).size.height * 0.07,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: kPrimaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
        onPressed: onPressed,
        child: Text(title,
            style: blackTextStyle.copyWith(
                fontSize: 16, fontWeight: medium, color: kWhiteColor)),
      ),
    );
  }
}
