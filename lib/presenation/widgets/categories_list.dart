import 'package:eat_fun_app/core/consts/theme/app_colors.dart';
import 'package:eat_fun_app/core/consts/theme/app_fonts.dart';
import 'package:eat_fun_app/data/model/foods_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesListView extends StatefulWidget {
  const CategoriesListView({super.key});

  @override
  State<CategoriesListView> createState() => _CategoriesListViewState();
}

class _CategoriesListViewState extends State<CategoriesListView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 325.w,
      height: 130.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: CategoriesModelList().models.length,
        itemBuilder: (_, index) {
          return Column(
            children: [
              ChoiceChip(
                selectedColor: AppColors.white,
                selectedShadowColor: AppColors.selectedColor,
                shadowColor: Colors.black,
                disabledColor: const Color.fromRGBO(229, 229, 229, 0.45),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 55, vertical: 35),
                label: CategoriesModelList().models[index].img,
                selected: selectedIndex == index,
                onSelected: (value) {
                  setState(() {
                    selectedIndex = index;
                  });
                  debugPrint(index.toString());
                },
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                CategoriesModelList().models[index].label,
                style: AppFonts.s13w400.copyWith(
                    color: selectedIndex == index
                        ? AppColors.selectedColor
                        : Colors.black),
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
    );
  }
}
