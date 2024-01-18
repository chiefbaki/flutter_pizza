import 'package:eat_fun_app/core/consts/theme/app_colors.dart';
import 'package:eat_fun_app/core/consts/theme/app_fonts.dart';
import 'package:flutter/material.dart';

class HomeTextField extends StatelessWidget {
  const HomeTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: AppFonts.s14w700,
      decoration: InputDecoration(
          fillColor: AppColors.unselectedColor,
          filled: true,
          hintText: "Search for a food item",
          hintStyle: AppFonts.s13w400.copyWith(color: AppColors.white),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide(color: AppColors.white, width: 2)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide(color: AppColors.white, width: 2))),
    );
  }
}
