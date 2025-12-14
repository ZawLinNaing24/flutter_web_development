import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/app_colors.dart';
import 'package:portfolio_website/constants/app_fonts.dart';

class ExperienceCard extends StatelessWidget {
  final String title;
  final String organization;
  final String peroid;
  final List<String> explanation;
  const ExperienceCard({
    super.key,
    required this.title,
    required this.organization,
    required this.peroid,
    required this.explanation,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: 180),
      padding: EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: appWhite,
        borderRadius: BorderRadius.circular(12),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          /* Organization Name */
          Expanded(flex: 2, child: Text(organization, style: bodyText3)),
          /* Experience details  */
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Text(title, style: headline3),
                // ListView.builder(
                //   shrinkWrap: true,
                //   physics: NeverScrollableScrollPhysics(),
                //   itemCount: explanation.length,
                //   itemBuilder: (context, index) {
                //     return ListTile(
                //       leading: Icon(Icons.circle, size: 6, color: Colors.black),
                //       title: Text(explanation[index]),
                //       dense: true,
                //     );
                //   },
                // ),
                ...explanation.map((point) {
                  return Row(
                    children: [
                      Icon(Icons.circle, size: 6, color: Colors.black),
                      const SizedBox(width: 8),
                      Expanded(child: Text(point)),
                    ],
                  );
                }),
              ],
            ),
          ),
          /* Experience Peroid */
          Expanded(flex: 2, child: Text(peroid, style: bodyText3)),
        ],
      ),
    );
  }
}
