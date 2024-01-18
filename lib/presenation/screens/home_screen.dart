import 'package:auto_route/auto_route.dart';
import 'package:eat_fun_app/core/consts/theme/app_colors.dart';
import 'package:eat_fun_app/core/consts/theme/app_fonts.dart';
import 'package:eat_fun_app/data/model/foods_model.dart';
import 'package:eat_fun_app/presenation/widgets/home_textfield.dart';
import 'package:eat_fun_app/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      body: Stack(
        children: [
          Positioned(
              top: 0,
              child: Stack(
                children: [
                  Image.asset(
                    Images.ellipse2,
                    width: 410.w,
                    height: 400.h,
                  ),
                  Positioned(
                    top: 65,
                    child: Stack(children: [
                      Image.asset(
                        Images.ellipse2,
                        width: 375.w,
                        height: 265.h,
                        fit: BoxFit.contain,
                      ),
                      Positioned(
                          top: 15,
                          left: 10,
                          child: Builder(builder: (context) {
                            return IconButton(
                              onPressed: () {
                                Scaffold.of(context).openDrawer();
                              },
                              icon: SizedBox(
                                  height: 24.w,
                                  width: 24.w,
                                  child: const Icon(
                                    Icons.menu,
                                  )),
                            );
                          })),
                      Positioned(
                          top: 20,
                          right: 15,
                          child: CircleAvatar(
                            radius: 19.r,
                            backgroundImage: const AssetImage(
                              Images.circleAva,
                            ),
                          )),
                      Positioned(
                          top: 60,
                          left: 20,
                          child: Text(
                            "Choose the\nFOOD you LOVE",
                            style: AppFonts.s24w400
                                .copyWith(color: AppColors.white),
                          )),
                      Positioned(
                          top: 150,
                          left: 20,
                          child: SizedBox(
                              width: 334.w,
                              height: 35.h,
                              child: const HomeTextField()))
                    ]),
                  ),
                ],
              )),
          Positioned(
            top: 405,
            left: 27,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Image.asset(
                    Images.bgBurger,
                    width: 300.w,
                    height: 500.h,
                  ),
                ),
                const Text("Categories", style: AppFonts.s18w400),
                Positioned(
                  top: 45,
                  child: SizedBox(
                    width: 320.w,
                    height: 150.h,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: CategoriesModelList().models.length,
                      itemBuilder: (_, index) {
                        return Column(
                          children: [
                            ChoiceChip(
                                selectedColor: AppColors.unselectedColor,
                                selectedShadowColor: AppColors.selectedColor,
                                disabledColor:
                                    const Color.fromRGBO(229, 229, 229, 0.45),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 55, vertical: 35),
                                label: CategoriesModelList().models[index].img,
                                selected: true),
                            SizedBox(
                              height: 8.h,
                            ),
                            Text(
                              CategoriesModelList().models[index].label,
                              style: AppFonts.s13w400,
                            )
                          ],
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 8.w,
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
