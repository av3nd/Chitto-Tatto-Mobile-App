import 'package:chitto_tatto/common/widgets/bottom_bar.dart';
import 'package:chitto_tatto/view/auth/screen/auth_screen.dart';

class AppRoute {
  AppRoute._();

  static const String loginRegister = '/';
  static const String bottomBarRoute = '/bottomBarRoute';

  static getAppRoutes() {
    return {
      loginRegister: (context) => const AuthScreen(),
      bottomBarRoute: (context) => const BottomBar(),
    };
  }
}
