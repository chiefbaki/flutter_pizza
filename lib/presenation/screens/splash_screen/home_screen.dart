import 'package:auto_route/auto_route.dart';
import 'package:eat_fun_app/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: Stack(
        children: [
          Positioned(
              top: 0,
              child: Stack(
                children: [
                  Image.asset(
                    Images.ellipse2,
                    width: 400.w,
                    height: 400.h,
                  ),
                  Positioned(
                    top: 56,
                    child: Stack(children: [
                      Image.asset(
                        Images.ellipse2,
                        width: 370.w,
                        height: 285.h,
                        fit: BoxFit.contain,
                      ),
                      Positioned(
                        top: 20,
                        left: 10,
                        child: Builder(builder: (context) {
                          return IconButton(
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                            icon: SizedBox(
                                height: 24.w,
                                width: 24.w,
                                child: Icon(
                                  Icons.menu,
                                )),
                          );
                        }),
                      ),
                    ]),
                  ),
                ],
              )),
          Stack(
            children: [
              Positioned(
                bottom: 220,
                left: 50,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        Images.bgBurger,
                        width: 300.w,
                        height: 300.h,
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
