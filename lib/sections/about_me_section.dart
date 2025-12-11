import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/about_me_description.dart';
import 'package:portfolio_website/constants/app_fonts.dart';
import 'package:portfolio_website/widgets/section_title.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1300,
      decoration: BoxDecoration(color: Colors.grey[50]),
      child: Column(
        children: [
          // SizedBox(height: 48),
          SectionTitle(title: "About Me", textStyle: sectionText),
          SizedBox(height: 48),
          SizedBox(
            width: 400,
            height: 480,
            child: SizedBox(
              width: 341,
              height: 341,
              child: Image(
                image: AssetImage("assets/images/portfolio_image.JPG"),
              ),
            ),
          ),
          SizedBox(
            width: 800,
            height: 486,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(header, style: headline3),
                SizedBox(height: 20),
                Text(body_1, style: bodyText3),
                SizedBox(height: 10),
                Text(body_2, style: bodyText3),
                SizedBox(height: 10),
                Text(body_3, style: bodyText3),
                SizedBox(height: 10),
                Text(body_4, style: bodyText3),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 10, // Horizontal gap between items
                      // runSpacing: 5, // Vertical gap between rows
                      children: [
                        _buildListItem('F.E. in Computer Engineering'),
                        _buildListItem('Hard worker'),
                        // _buildListItem('Avid learner'),
                        // _buildListItem('Problem solver'),
                      ],
                    ),
                    SizedBox(width: 50),
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 10, // Horizontal gap between items
                      // runSpacing: 5, // Vertical gap between rows
                      children: [
                        // _buildListItem('F.E. in Computer Engineering'),
                        // _buildListItem('Hard worker'),
                        _buildListItem('Avid learner'),
                        _buildListItem('Problem solver'),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(body_6, style: bodyText3),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListItem(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(Icons.circle, size: 6, color: Colors.black),
        const SizedBox(width: 8),
        Text(text, style: bodyText3),
      ],
    );
  }
}
