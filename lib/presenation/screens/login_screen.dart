import 'package:auto_route/auto_route.dart';
import 'package:eat_fun_app/core/consts/theme/app_colors.dart';
import 'package:eat_fun_app/core/consts/theme/app_fonts.dart';
import 'package:eat_fun_app/presenation/provider/bool_toggle.dart';
import 'package:eat_fun_app/presenation/widgets/email_textfield.dart';
import 'package:eat_fun_app/presenation/widgets/forget_pass_btn.dart';
import 'package:eat_fun_app/presenation/widgets/icon_btn.dart';
import 'package:eat_fun_app/presenation/widgets/login_btn.dart';
import 'package:eat_fun_app/presenation/widgets/password_textfield.dart';
import 'package:eat_fun_app/presenation/widgets/repeat_pass_textfield.dart';
import 'package:eat_fun_app/presenation/widgets/stack_bg.dart';
import 'package:eat_fun_app/presenation/widgets/toggle_btn.dart';
import 'package:eat_fun_app/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<ToggleBoolProvider>(context);
    return Scaffold(
        body: StackBg(
      widget: Positioned(
        top: 270,
        left: 30,
        child: Center(
          child: Container(
            width: 316.w,
            height: 414.h,
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(17),
                border: Border.all(width: 1, color: const Color(0xff766F6F))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 44),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const ToggleBtn(),
                  SizedBox(
                    height: 21.h,
                  ),
                  const EmailTextField(),
                  SizedBox(
                    height: 30.h,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(0),
                    child: PassTextField(),
                  ),
                  if (vm.isSelected) const RepeatPassTextField(),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [if (!vm.isSelected) const ForgetPassBtn()],
                  ),
                  const LoginBtn(),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    "OR",
                    style: AppFonts.s12w300
                        .copyWith(color: AppColors.hintTextColor),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const IconBtn(img: Images.search1),
                      SizedBox(
                        width: 16.w,
                      ),
                      const IconBtn(img: Images.facebook)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
