import 'package:auto_route/auto_route.dart';
import 'package:eat_fun_app/core/consts/theme/app_colors.dart';
import 'package:eat_fun_app/presenation/provider/bool_toggle.dart';
import 'package:eat_fun_app/presenation/screens/routes/app_router.dart';
import 'package:fk_toggle/fk_toggle.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ToggleBtn extends StatefulWidget {
  const ToggleBtn({super.key});

  @override
  State<ToggleBtn> createState() => _ToggleBtnState();
}

class _ToggleBtnState extends State<ToggleBtn> {
  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<ToggleBoolProvider>(context).isSelected;
    return FkToggle(
      width: 130,
      height: 38,
      labels: const ["Log in", "Sign Up"],
      selectedColor: AppColors.selectedColor,
      backgroundColor: AppColors.unselectedColor,
      cornerRadius: 17,
      onSelected: (index, instance) {
        setState(() {
          vm[index] = !vm[index];
          if (index == 1 && vm[index]) {
            context.router.push(const SignUpRoute());
          }
        });
      },
    );
  }
}