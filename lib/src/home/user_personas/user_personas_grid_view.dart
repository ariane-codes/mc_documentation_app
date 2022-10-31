import 'package:a1_documentation/src/components/custom_text_styles.dart';
import 'package:a1_documentation/src/constants/color_scheme.dart';
import 'package:a1_documentation/src/home/user_personas/user_personas.dart';
import 'package:flutter/material.dart';

class UserPersonasGridView extends StatelessWidget {
  UserPersonasGridView({super.key});

  static const routeName = '/goals';

  final TextStyle nameStyles = CustomTextStyles.blockTextStyle(
      customColor: restorAppColors.secondary,
      customFontSize: 26,
      customFontWeight: FontWeight.w800);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: GridView.count(
        crossAxisCount: 1,
        children: [
          for (UserPersona user in userPersonas)
            FractionallySizedBox(
              heightFactor: 0.8,
              child: Card(
                color: restorAppColors.tertiary.withOpacity(0.1),
                clipBehavior: Clip.hardEdge,
                child: InkWell(
                  splashColor: restorAppColors.primary,
                  onTap: () {
                    Navigator.restorablePushNamed(context,
                        "/${user.personalData.firstName.toLowerCase()}");
                  },
                  child: Center(
                      child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 25),
                      child: CircleAvatar(
                        minRadius: 80,
                        foregroundImage: AssetImage(
                            'assets/images/${user.personalData.firstName.toLowerCase()}.jpg'),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                            "${user.personalData.firstName} ${user.personalData.lastName}",
                            style: nameStyles))
                  ])),
                ),
              ),
            )
        ],
      ),
    );
  }
}
