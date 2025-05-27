import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/utils/app_color.dart';
import 'package:room_sublease/utils/app_icons.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: AppColors.blue50,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(AppIcons.notification),
            )),
        10.width,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonText(
                text:
                    "Your child’s father has decided to pick up the student early!",
                fontSize: 18,
                maxLines: 3,
                textAlign: TextAlign.start,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
              5.height,
              CommonText(
                text: "16 minutes ago",
                fontSize: 14,
                maxLines: 3,
                textAlign: TextAlign.start,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF484848),
              ),
            ],
          ),
        )
      ],
    );
  }
}
