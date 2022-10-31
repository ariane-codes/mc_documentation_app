import 'package:a1_documentation/src/constants/color_scheme.dart';
import 'package:a1_documentation/src/home/home_items.dart';
import 'package:flutter/material.dart';

class HomeListView extends StatelessWidget {
  HomeListView({super.key});

  final List<HomeItem> items = homeItems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: ListView.builder(
            restorationId: "homeListView",
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              final item = items[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: ListTile(
                  title: Text(
                    item.title,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  leading: Icon(
                    item.iconData,
                    color: restorAppColors.tertiary,
                    size: 38,
                  ),
                  onTap: () {
                    Navigator.restorablePushNamed(context, item.routeName);
                  },
                ),
              );
            },
          )),
    );
  }
}
