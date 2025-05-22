import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:room_sublease/core/app_route.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';
import 'package:room_sublease/view/screens/message_screens/widgets/message_user_card.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            60.height,
            //========================================================search bar
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Color(0xFFFDDEC3),
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.search),
                  10.width,
                  Flexible(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Search messages...",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //=====================================================message user
            15.height,
            Align(
              alignment: Alignment.centerLeft,
              child: CommonText(
                text: "Messages",
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFF121212),
              ),
            ),
            15.height,
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ...List.generate(10, (index) {
                      return InkWell(onTap: () {
                        Get.toNamed(AppRoute.messagingScreen);
                      },child: MessageUserCard());
                    })
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
