import 'package:chitto_tatto/config/router/app_routes.dart';
import 'package:chitto_tatto/config/themes/app_theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student App',
      initialRoute: AppRoute.splashRoute,
      routes: AppRoute.getAppRoutes(),
      theme: AppTheme.getApplicationTheme(),
    );
  }
}
