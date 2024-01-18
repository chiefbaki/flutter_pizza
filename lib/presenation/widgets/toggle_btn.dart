import 'package:eat_fun_app/core/consts/theme/app_colors.dart';
import 'package:eat_fun_app/presenation/provider/bool_toggle.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ToggleBtn extends StatefulWidget {
  const ToggleBtn({super.key});

  @override
  State<ToggleBtn> createState() => _ToggleBtnState();
}

class _ToggleBtnState extends State<ToggleBtn> {
  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<ToggleBoolProvider>(context);
    return ToggleSwitch(
      minWidth: 90.0,
      cornerRadius: 20.0,
      activeBgColors: [
        [AppColors.selectedColor],
        [AppColors.selectedColor]
      ],
      activeFgColor: Colors.white,
      inactiveBgColor: AppColors.unselectedColor,
      inactiveFgColor: AppColors.selectedColor,
      initialLabelIndex: 0,
      totalSwitches: 2,
      labels: const ['Log In', 'Sign Up'],
      radiusStyle: true,
      onToggle: (index) {
        print('switched to: $index');
        if (index == 0) {
          vm.isSelected = false;
        } else if (index == 1) {
          vm.isSelected = true;
          vm.changeWidget();
        }
      },
    );
  }
}
