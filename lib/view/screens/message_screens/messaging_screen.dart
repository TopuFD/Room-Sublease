import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:room_sublease/core/app_route.dart';
import 'package:room_sublease/extentions/extentions.dart';
import 'package:room_sublease/utils/app_color.dart';
import 'package:room_sublease/utils/app_icons.dart';
import 'package:room_sublease/view/components/common_image/common_image.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

class MessagingScreen extends StatefulWidget {
  const MessagingScreen({super.key});

  @override
  State<MessagingScreen> createState() => _MessagingScreenState();
}

class _MessagingScreenState extends State<MessagingScreen> {
  final ScrollController _scrollController = ScrollController();
  List message = [
    {
      "id": 123,
      "msg": "hi",
    },
    {
      "id": 123,
      "msg": "hello",
    },
    {
      "id": 456,
      "msg": "hi, brother how are you ?",
    },
    {
      "id": 123,
      "msg": "i am fine and you ?",
    },
    {
      "id": 456,
      "msg": "i am also fine. where are you ?",
    },
    {
      "id": 123,
      "msg": "i am at home and you ?",
    },
    {
      "id": 456,
      "msg": "i am also at home",
    },
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFCF3EC),
        elevation: 0,
        title: InkWell(
          onTap: () {
            Get.toNamed(AppRoute.userProfileScreen);
          },
          child: Row(
            children: [
              CommonImage(
                imageSrc:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2-x5vE0brboTxYw_enQTr0nuaGSVAIdn0dw&s",
                imageType: ImageType.network,
                borderRadius: 100,
                height: 35,
                width: 35,
              ),
              10.width,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonText(
                    text: "Sabrina Wah",
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                  CommonText(
                    text: "Online",
                    fontSize: 13,
                    color: Colors.green,
                    fontWeight: FontWeight.w600,
                  )
                ],
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: ListView.builder(
                controller: _scrollController,
                itemCount: message.length,
                itemBuilder: (context, index) {
                  var data = message[index];
                  return data["id"] == 123
                      ? myMessageCard(message: data["msg"])
                      : otherMessageCard(message: data["msg"]);
                },
              ),
            ),
          ),
          //=================================================footer part
          Padding(
            padding: EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0xFFAAAAAA)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20,
                          width: 20,
                          child: SvgPicture.asset(AppIcons.imoji),
                        ),
                        SizedBox(width: 10),
                        Expanded(
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
                ),
                SizedBox(width: 10),
                SizedBox(
                  height: 45,
                  width: 45,
                  child: SvgPicture.asset(AppIcons.send),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

//====================================my message card
  Widget myMessageCard({required String message}) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        margin: EdgeInsets.symmetric(vertical: 10.h),
        decoration: BoxDecoration(
            color: AppColors.blueDeep,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            )),
        child: CommonText(
          text: message,
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: AppColors.white,
        ),
      ),
    );
  }

//====================================other user message card
  Widget otherMessageCard({required String message}) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        margin: EdgeInsets.symmetric(vertical: 10.h),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            )),
        child: CommonText(
          text: message,
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: AppColors.black,
        ),
      ),
    );
  }
}
