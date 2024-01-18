import 'package:eat_fun_app/core/consts/theme/app_colors.dart';
import 'package:eat_fun_app/core/consts/theme/app_fonts.dart';
import 'package:eat_fun_app/data/model/foods_model.dart';
import 'package:eat_fun_app/presenation/widgets/star_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BurgersListView extends StatefulWidget {
  const BurgersListView({super.key});

  @override
  State<BurgersListView> createState() => _BurgersListViewState();
}

class _BurgersListViewState extends State<BurgersListView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 328.w,
      height: 240.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: BurgersModelList().models.length,
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: () {
              selectedIndex = index;
              setState(() {});
            },
            child: Container(
              width: 172.w,
              height: 240.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: selectedIndex == index ? AppColors.bgColor : const [Color(0xffFFFFFF),Color(0xffFFFFFF)]),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5,
                      spreadRadius: 1,
                      offset: const Offset(4, 5),
                      color: selectedIndex == index ? AppColors.selectedBoxShadowColor : AppColors.unselectedBoxShadowColor)
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 13, top: 10, bottom: 31),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        BurgersModelList().models[index].img,
                        width: 145.w,
                        height: 116.h,
                      ),
                    ),
                    Text(
                      BurgersModelList().models[index].label,
                      style: AppFonts.s14w400.copyWith(color: selectedIndex == index ? AppColors.white : Colors.black),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    const StarRatingBtn(),
                    SizedBox(
                      height: 18.h,
                    ),
                    Text(
                      "Rs.${BurgersModelList().models[index].price}",
                      style: AppFonts.s24w400.copyWith(color: selectedIndex == index ? AppColors.white : Colors.black),
                    )
                  ],
                ),
              ),
            ),
          );
        },
        separatorBuilder: (_, index) {
          return SizedBox(
            width: 12.w,
          );
        },
      ),
    );
  }
}
