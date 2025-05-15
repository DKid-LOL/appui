import 'package:flutter/material.dart';
import 'core/navigation/navigation_service.dart';
import 'routes/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App UI',
      navigatorKey: navigatorKey,
      initialRoute: AppRouter.login,
      onGenerateRoute: NavigationService.generateRoute,
    );
  }
}
