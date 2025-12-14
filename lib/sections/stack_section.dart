import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/app_colors.dart';
import 'package:portfolio_website/constants/app_fonts.dart';
import 'package:portfolio_website/widgets/experience_card.dart';
import 'package:portfolio_website/widgets/section_title.dart';
import 'package:portfolio_website/widgets/skill_badge.dart';
import 'package:portfolio_website/widgets/subsection_title.dart';

class StackSection extends StatelessWidget {
  const StackSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      // height: 1656,
      decoration: BoxDecoration(color: appWhite),
      child: Column(
        children: [
          SizedBox(height: 30),
          SectionTitle(title: "Stack", textStyle: sectionText),
          SizedBox(height: 20),
          SubSectionTitle(title: "Programming Language", textStyle: bodyText3),
          SizedBox(height: 20),
          Text(
            "The skills and technologies I am really good at:",
            style: bodyText1,
          ),
          SizedBox(height: 50),
          Row(
            spacing: 20,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SkillBadge(title: "Dart", logo: "assets/images/dart.png"),
              SkillBadge(
                title: "JavaScript",
                logo: "assets/images/javascript.png",
              ),
              SkillBadge(
                title: "TypeScript",
                logo: "assets/images/typescript.png",
              ),
              SkillBadge(title: "Node.Js", logo: "assets/images/nodedotjs.png"),
              SkillBadge(title: "Ruby", logo: "assets/images/ruby.png"),
              SkillBadge(title: "Go", logo: "assets/images/go.png"),
              SkillBadge(title: "Kotlin", logo: "assets/images/kotlin.png"),
            ],
          ),
          SizedBox(height: 50),
          SubSectionTitle(title: "Framework", textStyle: bodyText3),
          SizedBox(height: 20),
          Text(
            "The skills and technologies I am really good at:",
            style: bodyText1,
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SkillBadge(title: "Flutter", logo: "assets/images/flutter.png"),
              SkillBadge(
                title: "Ruby On Rails",
                logo: "assets/images/rubyonrails.png",
              ),
              SkillBadge(title: "Express", logo: "assets/images/express.png"),
              SkillBadge(title: "React", logo: "assets/images/react.png"),
              SkillBadge(title: "Next.js", logo: "assets/images/nextdotjs.png"),
            ],
          ),
          SizedBox(height: 50),
          SubSectionTitle(title: "Database", textStyle: bodyText3),
          SizedBox(height: 20),
          Text(
            "The skills and technologies I am really good at:",
            style: bodyText1,
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SkillBadge(
                title: "PostgreSQL",
                logo: "assets/images/postgresql.png",
              ),
              SkillBadge(title: "MySQL", logo: "assets/images/mysql.png"),
              SkillBadge(title: "SQLite", logo: "assets/images/sqlite.png"),
              SkillBadge(
                title: "phpMyAdmin",
                logo: "assets/images/phpmyadmin.png",
              ),
              SkillBadge(title: "MongoDB", logo: "assets/images/mongodb.png"),
              SkillBadge(title: "Firebase", logo: "assets/images/firebase.png"),
            ],
          ),
          SizedBox(height: 50),
          SubSectionTitle(title: "tools", textStyle: bodyText3),
          SizedBox(height: 20),
          Text(
            "The skills and technologies I am really good at:",
            style: bodyText1,
          ),
          SizedBox(height: 50),
          Wrap(
            spacing: 150,
            direction: Axis.horizontal,
            runAlignment: WrapAlignment.spaceAround,
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.spaceBetween,
            children: [
              SkillBadge(title: "Git", logo: "assets/images/git.png"),
              SkillBadge(title: "GitHub", logo: "assets/images/github.png"),
              SkillBadge(title: "Docker", logo: "assets/images/docker.png"),
              SkillBadge(title: "Render", logo: "assets/images/render.png"),
              SkillBadge(
                title: "Android Studio",
                logo: "assets/images/androidstudio.png",
              ),
              SkillBadge(
                title: "JetBrains",
                logo: "assets/images/jetbrains.png",
              ),
            ],
          ),
          Container(
            alignment: Alignment.center,
            height: 398,
            padding: EdgeInsets.only(top: 50),
            child: Column(
              children: [
                SubSectionTitle(title: "OS", textStyle: bodyText3),
                SizedBox(height: 20),
                Text(
                  "The skills and technologies I am really good at:",
                  style: bodyText1,
                ),
                SizedBox(height: 20),
                Wrap(
                  alignment: WrapAlignment.spaceAround,
                  spacing: 120,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    SkillBadge(
                      title: "Web",
                      logo: "assets/images/googlechrome.png",
                    ),
                    SkillBadge(title: "Linux", logo: "assets/images/linux.png"),
                    SkillBadge(
                      title: "Android",
                      logo: "assets/images/android.png",
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 864,
            height: 804,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SubSectionTitle(title: "Experience", textStyle: bodyText3),
                SizedBox(height: 20),
                Text("Here is a quick summary of my most recent experiences:"),
                SizedBox(height: 20),
                ListView(
                  shrinkWrap: true,
                  children: [
                    ExperienceCard(
                      title: "Internship",
                      organization: "Software Factory",
                      peroid: "Dec 2024 - now",
                      explanation: [
                        "Lorem ipsum dolor sit amet",
                        "hello world",
                        "consectetur adipiscing elit",
                        "Duis varius feugiat leo et finibus",
                      ],
                    ),
                    SizedBox(height: 48),
                    ExperienceCard(
                      title: "Internship",
                      organization: "Software Factory",
                      peroid: "Dec 2024 - now",
                      explanation: [
                        "Lorem ipsum dolor sit amet",
                        "hello world",
                        "consectetur adipiscing elit",
                        "Duis varius feugiat leo et finibus",
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
