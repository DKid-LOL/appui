import 'package:appui/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:appui/screens/login_screen.dart';
import 'package:appui/screens/register_screen.dart';

class NavigationService {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    WidgetBuilder builder;
    switch (settings.name) {
      case AppRouter.login:
        builder = (_) => const LoginScreen();
        break;
      case AppRouter.register:
        builder = (_) => const RegisterScreen();
        break;
      default:
        builder = (_) => const LoginScreen();
    }

    return MaterialPageRoute(builder: builder);
  }
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void navigateTo<T>(BuildContext context, String appRoute, {T? arguments}) {
  Navigator.pushNamed(context, appRoute, arguments: arguments);
}
