import 'package:auto_route/auto_route.dart';
import 'package:eat_fun_app/presenation/screens/login_screen.dart';
import 'package:eat_fun_app/presenation/screens/home_screen.dart';
import 'package:eat_fun_app/presenation/screens/splash_screen/splash_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SplashRoute.page,
        ),
        AutoRoute(
          page: MainRoute.page,
        ),
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
        )
      ];
}
