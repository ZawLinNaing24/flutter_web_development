import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/app_colors.dart';
import 'package:portfolio_website/constants/app_fonts.dart';
import 'package:portfolio_website/sections/linked_icon_button.dart';

class HomeSection extends StatefulWidget {
  const HomeSection({super.key});

  @override
  State<HomeSection> createState() => _HomeSectionState();
}

class _HomeSectionState extends State<HomeSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: appWhite),
      height: 960,
      alignment: Alignment.center,
      child: SizedBox(
        width: 864,
        height: 766,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi, I'm Zaw Lin Naing 👋", style: headline1),
            Text(
              "I’m a software developer with expertise in NodeJs, RubyOnRails, Go, Flutter, Kotlin...",
              style: headline2,
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.location_on_outlined),
                Text("Mandalay, Myanmar", style: bodyText4),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 5.5),

                Positioned(
                  right: 0,
                  left: 100,
                  child: Container(
                    width: 12, // Size of the dot
                    height: 12, // Size of the dot
                    decoration: BoxDecoration(
                      color: Colors.green, // Green color for online
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white, // White border for contrast
                        width: 2,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 7.5),
                Text("Availabe for new projects.", style: bodyText4),
              ],
            ),
            SizedBox(height: 5.5),
            Row(
              children: [
                LinkedIconButton(
                  icon: Icon(Icons.abc_outlined),
                  url: "url",
                  size: 40,
                ),
                SizedBox(width: 10),
                LinkedIconButton(
                  icon: Icon(Icons.abc_outlined),
                  url: "url",
                  size: 40,
                ),
                SizedBox(width: 10),
                LinkedIconButton(
                  icon: Icon(Icons.abc_outlined),
                  url: "url",
                  size: 40,
                ),
              ],
            ),
            Container(
              width: 600,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: appPink,
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage('assets/images/portfolio_image.JPG'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
