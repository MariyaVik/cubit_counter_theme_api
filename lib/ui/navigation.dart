import 'package:cubit_simple/ui/users_screen.dart';
import 'package:flutter/material.dart';

import 'home.dart';

abstract class NavRouteName {
  static const home = '/';
  static const users = '/users';
}

class Navigation {
  static const initialRoute = NavRouteName.home;

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case NavRouteName.home:
        return MaterialPageRoute(
            builder: (context) => MyHomePage(title: 'Provider'));
      case NavRouteName.users:
        return MaterialPageRoute(builder: (context) => UsersScreen());

      default:
        return MaterialPageRoute(
            builder: (context) => const Text('Navigation error!!!'));
    }
  }
}
