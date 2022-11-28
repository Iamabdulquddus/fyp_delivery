// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/route_middleware.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../views/splash/splash.dart';

class MyRoutes {
  ///views routes***************
  static String splash = '/splash';

  ///***********get routes******************************************

  static String getSplashRoute() => splash;

  /// *********************GetPage********************************************
  static List<GetPage> appRoutes() => [

        GetPage(
          name: splash,
          page: () => SplashScreen(),
          middlewares: [MyMiddleware()],
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(milliseconds: 500),
        ),


      ];
}

class MyMiddleware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    print(page?.name);
    return super.onPageCalled(page);
  }
}
