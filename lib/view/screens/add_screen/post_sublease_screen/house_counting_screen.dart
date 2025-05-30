import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:room_sublease/core/app_route.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/view/components/common_appbar/common_appbar.dart';
import 'package:room_sublease/view/components/common_button/common_button.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

class HouseCountingScreen extends StatefulWidget {
  const HouseCountingScreen({super.key});

  @override
  State<HouseCountingScreen> createState() => HouseCountingScreenState();
}

class HouseCountingScreenState extends State<HouseCountingScreen> {
  int bedroom = 0;
  int bathroom = 0;
  int kitchen = 0;
  int living = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppbar(title: ""),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: Get.width,
                height: 1,
                color: Color(0xFFE9DFD8),
              ),
              Container(
                width: Get.width * 0.7,
                height: 1,
                color: Color(0xFFFF4427),
              ),
            ],
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                24.height,
                CommonText(
                  text: "Which of these best describes your place?",
                  fontSize: 24,
                  bottom: 5,
                  maxLines: 2,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF161312),
                ),
                CommonText(
                  text: "Tell us about your space",
                  fontSize: 16,
                  maxLines: 2,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(22, 19, 18, 0.60),
                ),
                32.height,
                buildRoomCounterTile(
                  title: "Bedroom",
                  count: bedroom,
                  onIncrement: () => setState(() => bedroom++),
                  onDecrement: () => setState(() {
                    if (bedroom > 0) bedroom--;
                  }),
                ),
                15.height,
                buildRoomCounterTile(
                  title: "Bathroom",
                  count: bathroom,
                  onIncrement: () => setState(() => bathroom++),
                  onDecrement: () => setState(() {
                    if (bathroom > 0) bathroom--;
                  }),
                ),
                15.height,
                buildRoomCounterTile(
                  title: "Kitchen",
                  count: kitchen,
                  onIncrement: () => setState(() => kitchen++),
                  onDecrement: () => setState(() {
                    if (kitchen > 0) kitchen--;
                  }),
                ),
                15.height,
                buildRoomCounterTile(
                  title: "Living",
                  count: living,
                  onIncrement: () => setState(() => living++),
                  onDecrement: () => setState(() {
                    if (living > 0) living--;
                  }),
                ),
                Expanded(child: SizedBox()),
                CommonButton(
                  titleText: "Continue",
                  onTap: () {
                    Get.toNamed(AppRoute.postPhotoScreen);
                  },
                ),
                40.height,
              ],
            ),
          ))
        ],
      ),
    );
  }

  Widget buildRoomCounterTile({
    required String title,
    required int count,
    required VoidCallback onIncrement,
    required VoidCallback onDecrement,
  }) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            Row(
              children: [
                _buildRoundButton("-", onDecrement, isEnabled: count > 0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text(
                    '$count',
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
                _buildRoundButton("+", onIncrement, isEnabled: true),
              ],
            ),
          ],
        ),
        8.height,
        const Divider(
          thickness: 1,
          color: Color(0xFFE9DFD8),
        ),
      ],
    );
  }

  Widget _buildRoundButton(String symbol, VoidCallback onPressed,
      {required bool isEnabled}) {
    return InkWell(
      onTap: isEnabled ? onPressed : null,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Color(0xFFE9DFD8)),
          color: isEnabled ? Color(0xFFFCF3EC) : Colors.grey.shade200,
        ),
        child: Center(
          child: Text(
            symbol,
            style: TextStyle(
              fontSize: 20,
              color: isEnabled ? Colors.black : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
