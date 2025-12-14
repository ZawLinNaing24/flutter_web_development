import 'package:flutter/material.dart';

class SubSectionTitle extends StatelessWidget {
  final String title;
  final TextStyle textStyle;
  const SubSectionTitle({
    super.key,
    required this.title,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(title, style: textStyle, textAlign: TextAlign.center),
    );
  }
}
