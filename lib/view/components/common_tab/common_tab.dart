import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_sublease/utils/app_color.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

class CustomToggleTab extends StatelessWidget {
  final List<String> tabs;
  final int currentIndex;
  final ValueChanged<int> onChange;

  const CustomToggleTab({
    super.key,
    required this.tabs,
    required this.currentIndex,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(tabs.length, (index) {
          return GestureDetector(
            onTap: () => onChange(index),
            child: TweenAnimationBuilder<Color?>(
              duration: Duration(milliseconds: 700),
              tween: ColorTween(
                begin: currentIndex == index
                    ? Colors.transparent
                    : AppColors.blueDeep,
                end: currentIndex == index
                    ? AppColors.blueDeep
                    : Colors.transparent,
              ),
              builder: (context, color, child) {
                return Container(
                  margin: EdgeInsets.only(right: 10.w),
                  padding:
                      EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
                  decoration: BoxDecoration(
                    color: currentIndex == index ? AppColors.blueDeep : color,
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  child: CommonText(
                    text: tabs[index],
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: currentIndex == index ? Colors.white : Colors.black,
                  ),
                );
              },
            ),
          );
        }),
      ),
    );
  }
}
