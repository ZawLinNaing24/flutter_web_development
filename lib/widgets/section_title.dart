import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:portfolio_website/constants/app_colors.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final TextStyle textStyle;
  const SectionTitle({super.key, required this.title, required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 4),
      decoration: BoxDecoration(
        color: appBlue,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(title, style: textStyle),
    );
  }
}
