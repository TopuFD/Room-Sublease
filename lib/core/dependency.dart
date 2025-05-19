import 'package:get/get.dart';
import 'package:room_sublease/controller/bottom_nav_controller/bottom_nav_controller.dart';
import 'package:room_sublease/controller/expandable_text_controller.dart';

class DependencyInjection extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExpandableTextController(), fenix: true);
    Get.lazyPut(() => BottomNavController(), fenix: true);
  }
}
