
import 'package:get/get.dart';

class BottomNavController extends GetxController {
static BottomNavController get instance => Get.put(BottomNavController());
  var selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
  }
}
