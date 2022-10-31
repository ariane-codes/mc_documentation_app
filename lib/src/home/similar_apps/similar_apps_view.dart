import 'package:a1_documentation/src/components/custom_text_styles.dart';
import 'package:a1_documentation/src/components/header_text.dart';
import 'package:flutter/material.dart';

class SimilarAppsView extends StatelessWidget {
  const SimilarAppsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 10),
      child: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const HeaderText(text: "Analysis of Similar Apps"),
          Padding(
            padding: const EdgeInsets.only(top: 2, bottom: 10),
            child: Text(
              "Despite the wide array of applications in the market available today, I haven't quite been able to find one that fulfills what RestorApp is looking to do. I will here discuss some applications with overlapping subjects, and explain why they don't quite fulfill Restorapp's role.",
              style: CustomTextStyles.blockTextStyle(),
            ),
          ),
          SizedBox(
            height: 70,
            child: Image.network(
                "http://www.cbc.ca/kamloops/mt/Logo-tripadvisor1.jpg"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: Text(
              "While TripAdvisor has made a reputation for itself for having reliable reviews and a very wide user base, its content is oriented towards travellers - not usually people who live in that same city and are looking to enjoy it to the fullest. Furthermore, despite it allowing to rate restaurants, it does not allow to rate and discuss individual dishes. And last but not least, it aims to review everything related to travelling: hotels, airlines, bus services - not just restaurants. \n\nRestorApp has an advantage for people who are not necessarily into traveling but do want to enjoy their local cuisine to the fullest.",
              style: CustomTextStyles.blockTextStyle(),
            ),
          ),
          SizedBox(
            height: 100,
            child: Image.network(
                "https://d3.harvard.edu/platform-digit/wp-content/uploads/sites/2/2015/10/opentable.jpg"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: Text(
              "OpenTable is a leading app in Ireland for restaurant reviews and reservations - making reservations being its leading feature. Once again, I find that millennials and younger adults are not quite interested in making reservations, but rather looking at reviews and logging their experiences without that commitment. \n\nRestorApp has an opportunity here by detaching the review process from the table booking process.",
              style: CustomTextStyles.blockTextStyle(),
            ),
          ),
        ],
      )),
    );
  }
}
