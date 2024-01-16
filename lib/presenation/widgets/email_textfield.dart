import 'package:eat_fun_app/core/consts/theme/app_colors.dart';
import 'package:eat_fun_app/core/consts/theme/app_fonts.dart';
import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: AppFonts.s14w700,
      decoration: InputDecoration(
          hintText: "Enter  email or username",
          hintStyle: AppFonts.s14w300.copyWith(color: AppColors.hintTextColor),
          enabledBorder: const UnderlineInputBorder(),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.hintTextColor))),
    );
  }
}
