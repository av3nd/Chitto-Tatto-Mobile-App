import 'package:chitto_tatto/routes/app_routes.dart';
import 'package:chitto_tatto/themes/app_theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.loginRegister,
      routes: AppRoute.getAppRoutes(),
      theme: AppTheme.getApplicationTheme(),
    );
  }
}
