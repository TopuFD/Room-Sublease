import 'package:get/get.dart';
import 'package:room_sublease/controller/add_preferance_controller/make_friend_controller.dart';
import 'package:room_sublease/controller/add_preferance_controller/roommat_preferance_controller.dart';
import 'package:room_sublease/controller/add_preferance_controller/sublease_controller.dart';
import 'package:room_sublease/controller/auth_controller/complete_profile_controller.dart';
import 'package:room_sublease/controller/bottom_nav_controller/bottom_nav_controller.dart';
import 'package:room_sublease/controller/expandable_text_controller.dart';
import 'package:room_sublease/controller/home_controller/home_controller.dart';
import 'package:room_sublease/controller/profile_controller/edit_profile_controller.dart';

class DependencyInjection extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CompleteProfileController(), fenix: true);
    Get.lazyPut(() => HomeController(), fenix: true);
    Get.lazyPut(() => ExpandableTextController(), fenix: true);
    Get.lazyPut(() => BottomNavController(), fenix: true);
    Get.lazyPut(() => EditProfileController(), fenix: true);
    Get.lazyPut(() => RoommatPreferanceController(), fenix: true);
    Get.lazyPut(() => SubleaseController(), fenix: true);
    Get.lazyPut(() => MakeFriendController(), fenix: true);
  }
}
