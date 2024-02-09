import 'package:eat_fun_app/core/consts/theme/app_colors.dart';
import 'package:eat_fun_app/core/consts/theme/app_fonts.dart';
import 'package:eat_fun_app/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StackBg extends StatelessWidget {
  final Widget widget;
  const StackBg({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: 0,
            child: Stack(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      Images.ellipse2,
                      width: 430,
                      height: 410,
                    ),
                    Positioned(
                      top: 48,
                      child: Image.asset(
                        Images.ellipse2,
                        width: 390,
                        height: 280,
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 80,
                  left: 100,
                  child: Row(
                    children: [
                      Text(
                        "Eat.",
                        style:
                            AppFonts.s64w400.copyWith(color: AppColors.white),
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
                            style: AppFonts.s64w300
                                .copyWith(color: AppColors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )),
        widget,
        Positioned(
            bottom: -15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  Images.pizza,
                  width: 250,
                  height: 150,
                ),
                SizedBox(
                  width: 61.w,
                ),
                Image.asset(
                  Images.burger,
                  width: 116,
                  height: 124,
                ),
              ],
            ))
      ],
    );
  }
}
