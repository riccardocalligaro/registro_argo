import 'package:registro_argo/presentation/feature/home/home_page.dart';
import 'package:registro_argo/presentation/feature/login/login_page.dart';
import 'package:registro_argo/presentation/feature/splash_screen/splash_screen.dart';

class Routes {
  static const MAIN = '/';
  static const LOGIN = 'login';
  static const HOME = '/home';

  static var routes = {
    MAIN: (context) => SplashScreenPage(),
    LOGIN: (context) => LoginPage(),
    HOME: (context) => HomePage(),
  };
}
