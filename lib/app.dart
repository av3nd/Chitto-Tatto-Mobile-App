import 'package:chittotato/view/auth_screen.dart';
import 'package:chittotato/view/dashboard_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const AuthScreen(),
        '/dashboardRoute': (context) => const DashboardScreen(),
      },
    );
  }
}
