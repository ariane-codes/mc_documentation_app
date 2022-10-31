import 'package:a1_documentation/src/constants/routes.dart';
import 'package:a1_documentation/src/home/user_personas/user_persona_view.dart';
import 'package:a1_documentation/src/home/user_personas/user_personas_grid_view.dart';
import 'package:flutter/material.dart';

class UserPersonasFlow extends StatefulWidget {
  const UserPersonasFlow({super.key, required this.userPersonasRoute});
  final String userPersonasRoute;
  @override
  UserPersonasFlowState createState() => UserPersonasFlowState();
}

class UserPersonasFlowState extends State<UserPersonasFlow> {
  final _navigatorKeyUserPersonas = GlobalKey<NavigatorState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          final shouldPop =
              await _navigatorKeyUserPersonas.currentState?.maybePop();
          return shouldPop == null ? true : !shouldPop;
        },
        child: Scaffold(
            body: Navigator(
                key: _navigatorKeyUserPersonas,
                initialRoute: widget.userPersonasRoute,
                onGenerateRoute: _onGenerateRoute)));
  }

  Route _onGenerateRoute(RouteSettings routeSettings) {
    late Widget page;
    if (routeSettings.name == routeUserPersonasStartPage) {
      page = UserPersonasGridView();
    } else if (routeSettings.name == routeArlene ||
        routeSettings.name == routeJerome) {
      page = UserPersonaView(personaKey: routeSettings.name!.substring(1));
    } else {
      throw Exception("Unable to find route ${routeSettings.name}");
    }
    return MaterialPageRoute<dynamic>(
        builder: (context) {
          return page;
        },
        settings: routeSettings);
  }
}
