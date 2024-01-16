import 'package:eat_fun_app/core/consts/theme/app_colors.dart';
import 'package:eat_fun_app/core/consts/theme/app_fonts.dart';
import 'package:flutter/material.dart';

class ForgetPassBtn extends StatelessWidget {
  const ForgetPassBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          "Forgot Password?",
          style: AppFonts.s14w300.copyWith(color: AppColors.hintTextColor),
        ));
  }
}
