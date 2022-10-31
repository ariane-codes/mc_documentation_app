import 'package:a1_documentation/src/constants/routes.dart';
import 'package:flutter/material.dart';

class HomeItem {
  const HomeItem(this.id, this.title, this.iconData, this.routeName);

  final int id;
  final String title;
  final IconData iconData;
  final String routeName;
}

List<HomeItem> homeItems = [
  const HomeItem(1, "Goals", Icons.lunch_dining_rounded, routeGoals),
  const HomeItem(2, "User personas", Icons.face_retouching_natural_rounded,
      routeUserPersonas),
  const HomeItem(3, "Sketches", Icons.architecture_rounded, routeSketches),
  const HomeItem(4, "Critique of similar apps", Icons.fact_check_rounded,
      routeSimilarApps),
  const HomeItem(5, "Tech stack", Icons.layers_rounded, routeTechStack)
];
