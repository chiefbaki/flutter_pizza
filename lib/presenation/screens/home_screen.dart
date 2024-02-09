import 'package:auto_route/auto_route.dart';
import 'package:eat_fun_app/core/consts/theme/app_colors.dart';
import 'package:eat_fun_app/core/consts/theme/app_fonts.dart';
import 'package:eat_fun_app/presenation/screens/routes/app_router.dart';
import 'package:eat_fun_app/presenation/widgets/burgers_list.dart';
import 'package:eat_fun_app/presenation/widgets/categories_list.dart';
import 'package:eat_fun_app/presenation/widgets/home_textfield.dart';
import 'package:eat_fun_app/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (_) => AlertDialog.adaptive(
                            title: Text("Вы хотите выйти?", style: AppFonts.s14w400.copyWith(color: Colors.black),),
                            content: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(onPressed: (){
                                  context.router.push(const MainRoute());
                                }, child: const Text("Да", style: AppFonts.s14w400,)),
                                TextButton(onPressed: (){
                                  context.router.pop();
                                }, child: const Text("Нет", style: AppFonts.s14w400,))
                              ],
                            ),
                          ));
                },
                child: Text(
                  "Выйти",
                  style: AppFonts.s14w400.copyWith(color: Colors.black),
                  
                ))
          ],
        ),
      ),
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
            top: 395,
            left: 27,
            child: Stack(
              children: [
                Positioned(
                  bottom: -10,
                  left: 30,
                  child: Image.asset(
                    Images.bgBurger,
                    width: 300.w,
                    height: 500.h,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Categories", style: AppFonts.s18w400),
                    SizedBox(
                      height: 17.h,
                    ),
                    const CategoriesListView(),
                    const Text(
                      "Burgers",
                      style: AppFonts.s18w400,
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    const BurgersListView()
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
