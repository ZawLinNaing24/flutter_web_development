import 'package:flutter/material.dart';
import 'package:portfolio_website/constants/app_colors.dart';
import 'package:portfolio_website/constants/app_fonts.dart';
import 'package:portfolio_website/widgets/section_title.dart';
import 'package:portfolio_website/widgets/testimonial_card.dart';

class TestimonialsSection extends StatelessWidget {
  const TestimonialsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 1126,
      decoration: BoxDecoration(color: Colors.grey[50]),
      child: Column(
        children: [
          SizedBox(height: 20),
          SectionTitle(title: "Testimonials", textStyle: sectionText),
          SizedBox(height: 30),
          Text("Nice things people have to said about me:", style: bodyText1),
          SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: TestimonialCard(
                  cardWidth: 50,
                  cardHeight: 320,
                  testimonialString:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                  name: "John Jode",
                  role: "Junior Programmer - Software Factory",
                ),
              ),
              SizedBox(width: 48),
              Expanded(
                flex: 1,
                child: TestimonialCard(
                  cardWidth: 100,
                  cardHeight: 320,
                  testimonialString:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                  name: "John Doe",
                  role: "Senior Programmer - Software Factory",
                ),
              ),
            ],
          ),
          SizedBox(height: 50),
          TestimonialCard(
            cardWidth: 801,
            cardHeight: 332,
            testimonialString:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
            name: "John Doe",
            role: "CTO - Software Factory",
          ),
        ],
      ),
    );
  }
}
