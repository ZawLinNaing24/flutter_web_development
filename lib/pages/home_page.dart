import 'package:flutter/material.dart';
import 'package:portfolio_website/sections/about_me_section.dart';
import 'package:portfolio_website/sections/contact_section.dart';
import 'package:portfolio_website/sections/home_section.dart';
import 'package:portfolio_website/sections/projects_section.dart';
import 'package:portfolio_website/sections/stack_section.dart';
import 'package:portfolio_website/sections/testimonials_section.dart';
import 'package:portfolio_website/widgets/custom_appbar.dart';
import 'package:portfolio_website/widgets/custom_footer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ScrollController _scrollController;

  final GlobalKey homeSectionKey = GlobalKey();
  final GlobalKey aboutMeSectionKey = GlobalKey();
  final GlobalKey stackSectionKey = GlobalKey();
  final GlobalKey projectSectionKey = GlobalKey();
  final GlobalKey testimonialSectionKey = GlobalKey();
  final GlobalKey contactSectionKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        scrollToSection: scrollToSection,
        homeSectionKey: homeSectionKey,
        aboutMeSectionKey: aboutMeSectionKey,
        stackSectionKey: stackSectionKey,
        projectSectionKey: projectSectionKey,
        testimonialSectionKey: testimonialSectionKey,
        contactSectionKey: contactSectionKey,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomeSection(key: homeSectionKey),
            AboutMeSection(key: aboutMeSectionKey),
            StackSection(key: stackSectionKey),
            ProjectsSection(key: projectSectionKey),
            TestimonialsSection(key: testimonialSectionKey),
            ContactSection(key: contactSectionKey),
            CustomFooter(),
          ],
        ),
      ),
    );
  }

  void scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
        alignment: 0.0, // Top alignment
        alignmentPolicy: ScrollPositionAlignmentPolicy.explicit,
      );
    }
  }
}
