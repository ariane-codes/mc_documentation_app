import 'package:a1_documentation/src/constants/routes.dart';
import 'package:a1_documentation/src/home/home_list_view.dart';
import 'package:a1_documentation/src/home/similar_apps/similar_apps_view.dart';
import 'package:a1_documentation/src/home/sketches/sketches_view.dart';
import 'package:a1_documentation/src/home/tech_stack/tech_stack_view.dart';
import 'package:a1_documentation/src/home/user_personas/user_personas_view.dart';
import 'package:flutter/material.dart';
import 'package:a1_documentation/src/home/goals/goals_view.dart';
import 'package:a1_documentation/src/components/restorapp_logo.dart';
import 'package:a1_documentation/src/constants/color_scheme.dart';

class HomeFlow extends StatefulWidget {
  const HomeFlow({super.key, required this.homePageRoute});
  final String homePageRoute;
  @override
  HomeFlowState createState() => HomeFlowState();
}

class HomeFlowState extends State<HomeFlow> {
  final _navigatorKey = GlobalKey<NavigatorState>();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          final shouldPop = await _navigatorKey.currentState?.maybePop();
          return shouldPop == null ? true : !shouldPop;
        },
        child: Scaffold(
            appBar: AppBar(
                title: RestorAppLogo(
              customFontSize: 25,
              customUniformColor: restorAppColors.onPrimary,
            )),
            body: Navigator(
                key: _navigatorKey,
                initialRoute: widget.homePageRoute,
                onGenerateRoute: _onGenerateRoute)));
  }

  Route _onGenerateRoute(RouteSettings routeSettings) {
    late Widget page;
    switch (routeSettings.name) {
      case routeHomeStartPage:
        page = HomeListView();
        break;
      case routeGoals:
        page = const GoalsView();
        break;
      case routeUserPersonas:
        page = const UserPersonasView();
        break;
      case routeSketches:
        page = const SketchesView();
        break;
      case routeSimilarApps:
        page = const SimilarAppsView();
        break;
      case routeTechStack:
        page = const TechStackView();
        break;
      default:
        throw Exception("Unable to find route ${routeSettings.name}");
    }
    return MaterialPageRoute<dynamic>(
        builder: (context) {
          return page;
        },
        settings: routeSettings);
  }
}
