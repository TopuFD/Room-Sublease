import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/view/screens/home_screen/widget/sublease_card.dart';

class SubleasBody extends StatelessWidget {
  const SubleasBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      child: Column(
        children: [
          10.height,
          ...List.generate(5, (index) {
            return Container(
                margin: EdgeInsets.only(bottom: 15), child: SubleaseCard());
          })
        ],
      ),
    );
  }
}
