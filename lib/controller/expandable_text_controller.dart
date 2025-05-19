import 'package:get/get.dart';

class ExpandableTextController extends GetxController {
  RxBool isExpanded = false.obs;
  RxInt maxLinesCollapsed = 3.obs;
  RxString text = "".obs;


  updateBool(){
    isExpanded.value = ! isExpanded.value;
  }


}
