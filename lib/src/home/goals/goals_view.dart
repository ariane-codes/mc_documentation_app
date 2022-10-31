import 'package:a1_documentation/src/components/custom_text_styles.dart';
import 'package:a1_documentation/src/components/header_text.dart';
import 'package:flutter/material.dart';

class GoalsView extends StatelessWidget {
  const GoalsView({super.key});

  static const routeName = '/goals';

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 10),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            RichText(
                text: TextSpan(
                    text: "What is ",
                    style: headerTextStyle,
                    children: <TextSpan>[
                  TextSpan(text: "RestorApp", style: restorAppHeaderTextStyle),
                  TextSpan(text: "?", style: headerTextStyle)
                ])),
            RichText(
                text: TextSpan(
                    text: "RestorApp",
                    style: CustomTextStyles.restorAppLogoStyle(),
                    children: <TextSpan>[
                  TextSpan(
                      text:
                          " is a platform where you can log and share the food experiences you love.",
                      style: CustomTextStyles.blockTextStyle())
                ])),
            const HeaderText(text: "What makes it special?"),
            RichText(
                text: CustomTextStyles.inTextRestorApp(children: <TextSpan>[
              CustomTextStyles.styledTextSpan(
                  " is designed for foodies who love trying out new restaurants and would like a dedicated solution to log and share their experiences. With "),
              CustomTextStyles.inTextRestorApp(),
              CustomTextStyles.styledTextSpan(
                  ", they can check-in at a food place, rate it and take pictures of the site, but they can also log and rate the individual dishes they’ve ordered - which is what makes "),
              CustomTextStyles.inTextRestorApp(),
              CustomTextStyles.styledTextSpan(" different from other apps."),
            ])),
            const HeaderText(text: "What problem does it solve?"),
            RichText(
                text: CustomTextStyles.styledTextSpan(
                    "It will help young, tech-savvy adults who enjoy eating out (or even ordering-in!) and tend to forget their experiences: ")),
            const HeaderText(text: "Why is this app important to your users?"),
            RichText(
                text: CustomTextStyles.styledTextSpan(
                    "Firstly, there isn’t anything quite like it in the market - see Critique of Similar Apps.")),
            RichText(
                text: CustomTextStyles.styledTextSpan(
                    "Secondly, becoming more knowledgeable about the food we share with friends may contribute to a richer experience, deeper connection to our community, and even diversity and inclusion — since users would be more likely to know more about the dishes they consume.")),
          ],
        )));
  }
}
