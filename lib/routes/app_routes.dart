
import 'package:flutter/cupertino.dart';

import '../screen/home_screen.dart';
import '../screen/login_screen.dart';

abstract class Routes {

  // static const LoginPage = "/login_screen";

  static const String login = '/login';
  static const String home = '/home';
  // static const String details = '/details';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
    login: (context) => LoginScreen(),
    home: (context) => HomeScreen(),
    // details: (context) => ProductDetailsScreen(), // Example
  };
  }

}


// class AppRoutes {
//   static const String login = '/login';
//   static const String home = '/home';
//   static const String details = '/details';
//
//   static Map<String, WidgetBuilder> getRoutes() {return {
//     login: (context) => LoginScreen(),
//     home: (context) => HomeScreen(),
//     details: (context) => ProductDetailsScreen(), // Example
//   };
//   }
// }