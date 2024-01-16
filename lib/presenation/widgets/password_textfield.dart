import 'package:eat_fun_app/core/consts/theme/app_colors.dart';
import 'package:eat_fun_app/core/consts/theme/app_fonts.dart';
import 'package:flutter/material.dart';

class PassTextField extends StatelessWidget {
  const PassTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
                      obscureText: true,
                      maxLength: 40,
                      keyboardType: TextInputType.number,
                      style: AppFonts.s14w700,
                      decoration: InputDecoration(
                          isCollapsed: true,
                          counter: const Text(""),
                          hintText: "Password",
                          hintStyle: AppFonts.s14w300
                              .copyWith(color: AppColors.hintTextColor),
                          enabledBorder: const UnderlineInputBorder(),
                          focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColors.hintTextColor))),
                    );
  }
}