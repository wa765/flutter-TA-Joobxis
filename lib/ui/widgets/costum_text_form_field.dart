import 'package:findjob/shared/theme.dart';
import 'package:flutter/material.dart';

class CostumTextFormField extends StatefulWidget {
  //
  final String iconUrl;
  final String hintText;
  final TextEditingController controller;
  final int iconSize;
  final String visibleIcon;
  //
  const CostumTextFormField({
    Key? key,
    required this.iconUrl,
    required this.hintText,
    required this.controller,
    this.visibleIcon = '',
    this.iconSize = 0,
  }) : super(key: key);

  @override
  State<CostumTextFormField> createState() => _CostumTextFormFieldState();
}

class _CostumTextFormFieldState extends State<CostumTextFormField> {
  //
  bool visiblePassword = true;
  //
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            obscureText: visiblePassword,
            cursorColor: kBlackColor,
            controller: widget.controller,
            decoration: InputDecoration(
              prefixIcon: Container(
                padding: const EdgeInsets.all(12),
                child: ImageIcon(
                  AssetImage(widget.iconUrl),
                  size: widget.iconSize.toDouble(),
                  color: kGrayColor,
                ),
              ),
              suffixIcon: IconButton(
                icon: Icon(
                    // import asset eye from figma
                    visiblePassword ? Icons.visibility : Icons.visibility_off),
                color: kGrayColor,
                onPressed: () {
                  setState(() {
                    visiblePassword = !visiblePassword;
                  });
                },
              ),
              hintText: widget.hintText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
                borderSide: BorderSide(color: kPrimaryColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
