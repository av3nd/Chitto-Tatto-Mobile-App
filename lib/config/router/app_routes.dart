import 'package:chitto_tatto/core/common/widgets/bottom_bar.dart';
import 'package:chitto_tatto/features/auth/presentation/view/auth_screen.dart';
import 'package:chitto_tatto/features/splash/presentation/view/splash_view.dart';

class AppRoute {
  AppRoute._();
  static const String splashRoute = '/splash';
  static const String loginRegister = '/loginregisterRoute';
  static const String bottomBarRoute = '/bottomBarRoute';

  static getAppRoutes() {
    return {
      splashRoute: (context) => const SplashView(),
      loginRegister: (context) => const AuthScreen(),
      bottomBarRoute: (context) => const BottomBar(),
    };
  }
}
