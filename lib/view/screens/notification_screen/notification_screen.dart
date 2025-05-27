import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_sublease/view/components/common_appbar/common_appbar.dart';
import 'package:room_sublease/view/screens/notification_screen/notification_card.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CommonAppbar(title: "Notification"),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              ...List.generate(5, (index) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: NotificationCard(),
                );
              })
            ],
          ),
        ));
  }
}
