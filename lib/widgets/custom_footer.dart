import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/app_colors.dart';
import 'package:portfolio_website/constants/app_fonts.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 80,
      decoration: BoxDecoration(color: appBlack),
      child: Center(
        child: Text(
          textAlign: TextAlign.center,
          "Copyright © name. All Rights Reserved.",
          style: bodyText1.copyWith(color: appWhite),
        ),
      ),
    );
  }
}
