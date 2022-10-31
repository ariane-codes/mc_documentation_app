import 'package:a1_documentation/src/components/custom_text_styles.dart';
import 'package:a1_documentation/src/components/header_text.dart';
import 'package:a1_documentation/src/constants/color_scheme.dart';
import 'package:a1_documentation/src/components/restorapp_logo.dart';
import 'package:flutter/material.dart';

class SketchesView extends StatelessWidget {
  const SketchesView({super.key});

  static const routeName = '/goals';

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const HeaderText(text: "Preliminar Sketches"),
              Padding(
                padding: const EdgeInsets.only(top: 2, bottom: 10),
                child: Text(
                  "Here, I will present some of the preliminar sketches I've prepared for RestorApp. Needless to say, this is all very early development and they are subject to change before the delivery date.",
                  style: CustomTextStyles.blockTextStyle(),
                ),
              ),
              Container(
                height: 500,
                decoration: BoxDecoration(
                    border:
                        Border.all(width: 5, color: restorAppColors.tertiary),
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(10, 10),
                          blurRadius: 5,
                          spreadRadius: 5,
                          color: restorAppColors.secondary)
                    ]),
                child: Image.asset("assets/images/sketch_1.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10),
                child: Text(
                  "A logged in user may see a screen like the one above. They have easy access to all the main functionalities of RestorApp: adding a new restaurant, finding nearby restaurants, and viewing the restaurants and food places they've already favourited with all their details.",
                  style: CustomTextStyles.blockTextStyle(),
                ),
              ),
              Container(
                height: 500,
                decoration: BoxDecoration(
                    border:
                        Border.all(width: 5, color: restorAppColors.tertiary),
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(10, 10),
                          blurRadius: 5,
                          spreadRadius: 5,
                          color: restorAppColors.secondary)
                    ]),
                child: Image.asset("assets/images/sketch_2.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10),
                child: Text(
                  "When they click on the 'Add' button, for example, they may see a screen like this. The app offers them the possibility to either type in the address they're at, or to click on the location icon and let the application detect their location. Another potential feature would be to add a separate option for take-outs or deliveries.",
                  style: CustomTextStyles.blockTextStyle(),
                ),
              ),
              Container(
                height: 500,
                decoration: BoxDecoration(
                    border:
                        Border.all(width: 5, color: restorAppColors.tertiary),
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(10, 10),
                          blurRadius: 5,
                          spreadRadius: 5,
                          color: restorAppColors.secondary)
                    ]),
                child: Image.asset("assets/images/sketch_3.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10),
                child: Text(
                  "If they do indeed prefer the app detect their location and tap on said icon, a Google Maps-powered widget will display their most accurate location, with a draggable pin so that they can accurately pinpoint it.",
                  style: CustomTextStyles.blockTextStyle(),
                ),
              ),
              Container(
                height: 500,
                decoration: BoxDecoration(
                    border:
                        Border.all(width: 5, color: restorAppColors.tertiary),
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(10, 10),
                          blurRadius: 5,
                          spreadRadius: 5,
                          color: restorAppColors.secondary)
                    ]),
                child: Image.asset("assets/images/sketch_4.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10),
                child: Text(
                  "Once they've input their location - either by manually typing in the address or by selecting it in the map - the app displays it on the screen and allows the user to type in the restaurant name; that is, if no one has ever logged that location as a restaurant before. It also prompts the user to take pictures of the restaurant if they please. When they are done, they can tap save and move on to the review part of the app.\n\n",
                  style: CustomTextStyles.blockTextStyle(),
                ),
              )
            ],
          ),
        ));
  }
}
