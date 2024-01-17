import 'package:auto_route/auto_route.dart';
import 'package:eat_fun_app/core/consts/theme/app_colors.dart';
import 'package:eat_fun_app/core/consts/theme/app_fonts.dart';
import 'package:eat_fun_app/presenation/screens/routes/app_router.dart';
import 'package:eat_fun_app/resources/resources.dart';
import 'package:flutter/material.dart';


@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    routing();
  }

  void routing() {
    Future.delayed(const Duration(seconds: 2), () {
      context.router.push(const MainRoute());
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: AppColors.bgColor,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Center(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Eat.",
                  style: AppFonts.s64w400.copyWith(color: AppColors.white),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      Images.pan,
                      width: 80,
                      height: 80,
                    ),
                    Text(
                      "Fun",
                      style: AppFonts.s64w300.copyWith(color: AppColors.white),
                    ),
                  ],
                ),
              ]),
        ),
      ),
      floatingActionButton: Image.asset(Images.splashScreenImg),
    );
  }
}
