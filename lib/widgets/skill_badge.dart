import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/app_fonts.dart';

class SkillBadge extends StatelessWidget {
  final String title;
  final String logo;
  const SkillBadge({super.key, required this.title, required this.logo});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(image: AssetImage(logo), width: 50, height: 50),
        SizedBox(height: 8),
        Text(title, style: bodyText2),
      ],
    );
  }
}
