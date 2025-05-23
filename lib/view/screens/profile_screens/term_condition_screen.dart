import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:room_sublease/view/components/common_appbar/common_appbar.dart';
import 'package:room_sublease/view/components/common_text/common_text.dart';

class TermConditionScreen extends StatelessWidget {
  const TermConditionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppbar(title: "Terms & Conditions"),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Expanded(
              child: CommonText(
                text:
                    "Lorem ipsum dolor sit amet consectetur. Mauris cursus laoreet ut egestas. Faucibus elit nunc luctus felis. Nullam faucibus quisque tristique elementum sagittis tempus at lectus. Mattis ipsum amet eu aliquam lorem mi scelerisque sodales viverra. Convallis pretium consequat risus ut augue. Parturient at aliquam egestas diam sed. Sagittis et malesuada sem cras. Maecenas eu aliquam id feugiat gravida nisl ultricies. Integer dui odio nibh quis. Faucibus a luctus amet enim lobortis odio. In turpis sed quam sed etiam senectus bibendum in a. Sagittis dui fringilla morbi sit interdum netus. Lacinia nulla at fusce pellentesque elementum suscipit venenatis. Nisl id aliquet quis id sed cursus vel senectus risus. Neque donec aliquet urna dictumst. Tortor semper lorem lacus ipsum commodo. Eget amet urna montes libero enim in semper. Nisi vivamus consectetur euismod ut eget sit ultricies cursus lectus. Nisl cursus fermentum tempor at.Lorem ipsum dolor sit amet consectetur. Mauris cursus laoreet ut egestas. Faucibus elit nunc luctus felis. Nullam faucibus quisque tristique elementum sagittis tempus at lectus. Mattis ipsum amet eu aliquam lorem mi scelerisque sodales viverra. Convallis pretium consequat risus ut augue. Parturient at aliquam egestas diam sed. Sagittis et malesuada sem cras. Maecenas eu aliquam id feugiat gravida nisl ultricies. Integer dui odio nibh quis. Faucibus a luctus amet enim lobortis odio. In turpis sed quam sed etiam senectus bibendum in a. Sagittis dui fringilla morbi sit interdum netus. Lacinia nulla at fusce pellentesque elementum suscipit venenatis. Nisl id aliquet quis id sed cursus vel senectus risus. Neque donec aliquet urna dictumst. Tortor semper lorem lacus ipsum commodo. Eget amet urna montes libero enim in semper. Nisi vivamus consectetur euismod ut eget sit ultricies cursus lectus. Nisl cursus fermentum tempor at.",
                fontSize: 18,
                maxLines: 300,
                bottom: 20,
                lineHeight: 1.4,
                textAlign: TextAlign.justify,
                fontWeight: FontWeight.w400,
                color: Color(0xFF000000),
              ),
            )),
      ),
    );
  }
}
