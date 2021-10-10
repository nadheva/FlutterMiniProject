import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/Login/login_screen.dart';
import 'package:flutter_application_1/Screens/Register/register_screen.dart';
import 'package:flutter_application_1/Screens/ForgotPassword/forgot_password_screen.dart';
import 'package:flutter_application_1/Screens/ChangePassword/change_password_screen.dart';
import 'package:flutter_application_1/Screens/Validation/validation_screen.dart';
import 'package:flutter_application_1/main.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // jika ingin mengirim argument
    // final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => MyApp());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/register':
        return MaterialPageRoute(builder: (_) => RegisterPage());
      case '/forgotPassword':
        return MaterialPageRoute(builder: (_) => ForgotPasswordPage());
      case '/changePassword':
        return MaterialPageRoute(builder: (_) => ChangePasswordPage());
      case '/validation':
        return MaterialPageRoute(builder: (_) => ValidationPage());
      // return MaterialPageRoute(builder: (_) => AboutPage(args));
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text('Error page')),
      );
    });
  }
}
