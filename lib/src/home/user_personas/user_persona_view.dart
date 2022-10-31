import 'package:a1_documentation/src/components/custom_text_styles.dart';
import 'package:a1_documentation/src/components/header_text.dart';
import 'package:a1_documentation/src/constants/color_scheme.dart';
import 'package:a1_documentation/src/home/user_personas/user_personas.dart';
import 'package:flutter/material.dart';

/// Displays the welcome view shown upon opening
/// the application.

class UserPersonaView extends StatefulWidget {
  const UserPersonaView({required this.personaKey, super.key});
  final String personaKey;
  @override
  UserPersonaViewState createState() => UserPersonaViewState();
}

class UserPersonaViewState extends State<UserPersonaView> {
  late UserPersona userPersona;

  static UserPersona getUserPersona(String personaKey) {
    return userPersonas.firstWhere((element) =>
        element.personalData.firstName.toLowerCase() == personaKey);
  }

  final double paddingBetweenTexts = 3;

  @override
  void initState() {
    super.initState();
    userPersona = getUserPersona(widget.personaKey);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              HeaderText(
                  text:
                      "${userPersona.personalData.firstName} ${userPersona.personalData.lastName}"),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: paddingBetweenTexts),
                  child: RichText(
                      text: CustomTextStyles.styledTextSpan("Age: ",
                          customFontWeight: FontWeight.bold,
                          children: <TextSpan>[
                        CustomTextStyles.styledTextSpan(
                            userPersona.personalData.age.toString()),
                      ]))),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: paddingBetweenTexts),
                  child: RichText(
                      text: CustomTextStyles.styledTextSpan("Education: ",
                          customFontWeight: FontWeight.bold,
                          children: <TextSpan>[
                        CustomTextStyles.styledTextSpan(
                            userPersona.personalData.education),
                      ]))),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: paddingBetweenTexts),
                  child: RichText(
                      text: CustomTextStyles.styledTextSpan("Status: ",
                          customFontWeight: FontWeight.bold,
                          children: <TextSpan>[
                        CustomTextStyles.styledTextSpan(
                            userPersona.personalData.status),
                      ]))),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: paddingBetweenTexts),
                  child: RichText(
                      text: CustomTextStyles.styledTextSpan("Occupation: ",
                          customFontWeight: FontWeight.bold,
                          children: <TextSpan>[
                        CustomTextStyles.styledTextSpan(
                            userPersona.personalData.occupation),
                      ]))),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: paddingBetweenTexts),
                  child: RichText(
                      text: CustomTextStyles.styledTextSpan("Location: ",
                          customFontWeight: FontWeight.bold,
                          children: <TextSpan>[
                        CustomTextStyles.styledTextSpan(
                            userPersona.personalData.location),
                      ]))),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: paddingBetweenTexts),
                  child: RichText(
                      text: CustomTextStyles.styledTextSpan("Personality: ",
                          customFontWeight: FontWeight.bold,
                          children: <TextSpan>[
                        CustomTextStyles.styledTextSpan(
                            userPersona.personalityAdjectives.join(", ")),
                      ]))),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  '"${userPersona.quote}"',
                  style:
                      CustomTextStyles.headerStyle(fontStyle: FontStyle.italic),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: paddingBetweenTexts),
                child: Text(
                  userPersona.briefStory,
                  style: CustomTextStyles.blockTextStyle(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  "Goals",
                  style: CustomTextStyles.headerStyle(),
                ),
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                for (String goal in userPersona.goals)
                  ListTile(
                      dense: true,
                      leading: Icon(
                        Icons.sentiment_satisfied_rounded,
                        color: restorAppColors.tertiary,
                        size: 20,
                      ),
                      title:
                          Text(goal, style: CustomTextStyles.blockTextStyle()))
              ]),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  "Frustrations",
                  style: CustomTextStyles.headerStyle(),
                ),
              ),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                for (String frustration in userPersona.frustrations)
                  ListTile(
                      dense: true,
                      leading: Icon(
                        Icons.sentiment_dissatisfied_rounded,
                        color: restorAppColors.tertiary,
                        size: 20,
                      ),
                      title: Text(frustration,
                          style: CustomTextStyles.blockTextStyle()))
              ]),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  "Use Case",
                  style: CustomTextStyles.headerStyle(),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: paddingBetweenTexts),
                child: Text(
                  userPersona.useCase,
                  style: CustomTextStyles.blockTextStyle(),
                ),
              ),
            ],
          ),
        ));
  }
}
