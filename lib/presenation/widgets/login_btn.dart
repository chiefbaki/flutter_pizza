import 'package:auto_route/auto_route.dart';
import 'package:eat_fun_app/core/consts/theme/app_colors.dart';
import 'package:eat_fun_app/core/consts/theme/app_fonts.dart';
import 'package:eat_fun_app/presenation/screens/routes/app_router.dart';
import 'package:flutter/material.dart';

class LoginBtn extends StatelessWidget {
  const LoginBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          context.router.push(const HomeRoute());
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.selectedColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 42, vertical: 8),
          child: Text(
            "Log in",
            style: AppFonts.s14w700,
          ),
        ));
  }
}
