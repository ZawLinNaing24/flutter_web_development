import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/app_colors.dart';
import 'package:portfolio_website/constants/app_fonts.dart';

class TestimonialCard extends StatelessWidget {
  final double cardWidth;
  final double cardHeight;
  final String testimonialString;
  final String name;
  final String role;
  const TestimonialCard({
    super.key,
    required this.cardWidth,
    required this.cardHeight,
    required this.testimonialString,
    required this.name,
    required this.role,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardWidth,
      height: cardHeight,
      padding: EdgeInsets.symmetric(horizontal: 48),
      decoration: BoxDecoration(
        color: appWhite,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: appBlack.withOpacity(0.07),
            blurRadius: 3.0,
            offset: const Offset(0, 4),
          ),
          BoxShadow(
            color: appBlack.withOpacity(0.06),
            offset: const Offset(0, 2),
            blurRadius: 2.0,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              color: Colors.grey[400],
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.person, size: 40),
          ),
          SizedBox(height: 20),
          Text(
            "\"$testimonialString\"",
            style: bodyText3,
            textAlign: TextAlign.justify,
          ),

          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Column(
              children: [
                Text(name, style: headline3),
                Text(role, style: bodyText4),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
