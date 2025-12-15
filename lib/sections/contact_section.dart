import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio_website/constants/app_colors.dart';
import 'package:portfolio_website/constants/app_fonts.dart';
import 'package:portfolio_website/widgets/section_title.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      decoration: BoxDecoration(color: appWhite),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25.0),
        child: Column(
          children: [
            SectionTitle(title: "Contact", textStyle: sectionText),
            SizedBox(height: 30),
            Text(
              "What's next? Feel free to reach out to me if you are looking for \n \ta developer, have a query, or simply want to connect.",
              style: bodyText1,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.email_outlined, size: 30),
                SizedBox(width: 20),
                Text("zawlinnaing.dev@gmail.com", style: headline2),
                SizedBox(width: 20),
                IconButton(
                  icon: Icon(Icons.copy, size: 20),
                  onPressed: () async {
                    await Clipboard.setData(
                      ClipboardData(text: "zawlinnaing.dev@gmail.com"),
                    );
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('"Email" copied!')),
                      );
                    }
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.call, size: 30),
                SizedBox(width: 20),
                Text("+95 9000000000", style: headline2),
                SizedBox(width: 20),
                IconButton(
                  onPressed: () async {
                    await Clipboard.setData(
                      ClipboardData(text: "+95 9000000000"),
                    );
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('"Phone Number" copied!')),
                      );
                    }
                  },
                  icon: Icon(Icons.copy, size: 20),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
