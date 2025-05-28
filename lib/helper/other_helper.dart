import 'dart:developer';

import 'package:country_picker/country_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

import '../utils/app_color.dart';

class OtherHelper {
  static RegExp emailRegexp = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  static RegExp passRegExp = RegExp(r'(?=.*[a-z])(?=.*[0-9])');

  static String? validator(value) {
    if (value.isEmpty) {
      return "This field is required";
    } else {
      return null;
    }
  }

  static String? emailValidator(value) {
    if (value!.isEmpty) {
      return "This field is required".tr;
    } else if (!emailRegexp.hasMatch(value)) {
      return "Enter valid email".tr;
    } else {
      return null;
    }
  }

  static String? passwordValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "This field is required".tr;
    }

    if (value.length < 8) {
      return "Password must be at least 8 characters long".tr;
    }

    return null; // Valid password
  }

  static String? confirmPasswordValidator(value, passwordController) {
    if (value.isEmpty) {
      return "This field is required".tr;
    } else if (value != passwordController.text) {
      return "The password does not match".tr;
    } else {
      return null;
    }
  }

  // static Future<void> dateOfBirthPicker(
  //     TextEditingController controller) async {
  //   final DateTime? picked = await showDatePicker(
  //     builder: (context, child) => Theme(
  //         data: Theme.of(context).copyWith(
  //           colorScheme: const ColorScheme.light(
  //             primary: AppColors.blueDeep,
  //             onPrimary: AppColors.white,
  //             onSurface: AppColors.black,
  //           ),
  //         ),
  //         child: child!),
  //     context: Get.context!,
  //     initialDate: DateTime.now(),
  //     firstDate: DateTime(1900),
  //     lastDate: DateTime(2101),
  //   );
  //   if (picked != null) {
  //     controller.text = "${picked.year}/${picked.month}/${picked.day}";
  //   }
  // }
  static Future<void> dateOfBirthPicker(
      TextEditingController controller) async {
    final DateTime today = DateTime.now();

    final DateTime? picked = await showDatePicker(
      builder: (context, child) => Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: AppColors.blueDeep,
              onPrimary: AppColors.white,
              onSurface: AppColors.black,
            ),
          ),
          child: child!),
      context: Get.context!,
      initialDate: today,
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      controller.text = "${picked.year}-${picked.month}-${picked.day}";
    }
  }

  static Future<String> datePicker(
    TextEditingController controller,
  ) async {
    final DateTime? picked = await showDatePicker(
      builder: (context, child) => Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: AppColors.blueDeep,
            ),
          ),
          child: child!),
      context: Get.context!,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      controller.text = "${picked.month}/${picked.day}/${picked.year}";
      return "${picked.day}/${picked.month}/${picked.year}";
    }

    return "";
  }

  static Future<List<String?>> pickMultipleImage(
      {required int imageLimit}) async {
    final ImagePicker picker = ImagePicker();
    log("Image Limit: $imageLimit");

    final List<XFile?> getImages =
        await picker.pickMultiImage(imageQuality: 50, limit: imageLimit);

    if (getImages.isEmpty) return [];

    if (getImages.length > imageLimit) {
      // Utils.snackBarMessage("You exceed  the image limit", "You have $imageLimit ${imageLimit > 1 ? 'images' : 'image'} left");
      return [];
    }

    return getImages.map((file) => file?.path).toList();
  }

  static Future<String?> openGallery() async {
    final ImagePicker picker = ImagePicker();
    final XFile? getImages =
        await picker.pickImage(source: ImageSource.gallery, imageQuality: 50);
    if (getImages == null) return null;
    if (kDebugMode) {
      print(getImages.path);
    }

    return getImages.path;
  }

  //Pick Image from Camera

  static Future<String?> openCamera() async {
    final ImagePicker picker = ImagePicker();
    final XFile? getImages =
        await picker.pickImage(source: ImageSource.camera, imageQuality: 50);
    if (getImages == null) return null;

    if (kDebugMode) {
      print(getImages.path);
    }

    return getImages.path;
  }

  static Future openTimePicker(TextEditingController controller) async {
    TimeOfDay? picked = await showTimePicker(
      context: Get.context!,
      initialTime: TimeOfDay.now(),
      builder: (BuildContext context, Widget? child) {
        return MediaQuery(
          data: MediaQuery.of(Get.context!)
              .copyWith(alwaysUse24HourFormat: false),
          child: child!,
        );
      },
    );

    if (picked != null) {
      final hour = picked.hourOfPeriod == 0 ? 12 : picked.hourOfPeriod;
      final minute = picked.minute.toString().padLeft(2, '0');
      final period = picked.period == DayPeriod.am ? 'AM' : 'PM';

      return '$hour:$minute $period';
    }
    return "";
  }

  static double scaleText(double baseFontSize) {
    double height = Get.height;
    double width = Get.width;
    double scaleFactor =
        (height < width ? height : width) / 800; // Use a common base size
    return baseFontSize * scaleFactor;
  }

  static String timeAgo(String dateTime) {
    DateTime createdAt = DateTime.parse(dateTime);
    Duration diff = DateTime.now().difference(createdAt);

    if (diff.inSeconds < 60) {
      return '${diff.inSeconds} seconds ago';
    } else if (diff.inMinutes < 60) {
      return '${diff.inMinutes} minutes ago';
    } else if (diff.inHours < 24) {
      return '${diff.inHours} hours ago';
    } else if (diff.inDays < 30) {
      return '${diff.inDays} days ago';
    } else if (diff.inDays < 365) {
      int months = (diff.inDays / 30).floor();
      return '$months months ago';
    } else {
      int years = (diff.inDays / 365).floor();
      return '$years years ago';
    }
  }

  static String formatDate(String dateStr) {
    // Parse the date string into a DateTime object
    DateTime dateTime = DateTime.parse(dateStr);

    // Format the DateTime object to the desired format
    String formattedDate = DateFormat('d MMM yyyy').format(dateTime);

    return formattedDate;
  }

  static String splitToGetOnlyDate(String isoDate) {
    DateTime dateTime = DateTime.parse(isoDate);
    return DateFormat('dd-MM-yyyy').format(dateTime);
  }

  //================================================country picker
  static Future<Country?> customCountryPicker(BuildContext context) async {
    Country? selectedCountry;

    showCountryPicker(
      context: context,
      showPhoneCode: true,
      onSelect: (Country country) {
        selectedCountry = country;
      },
      countryListTheme: CountryListThemeData(
        flagSize: 25,
        backgroundColor: Colors.white,
        textStyle: const TextStyle(fontSize: 16, color: Colors.black),
        bottomSheetHeight: 500,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        inputDecoration: InputDecoration(
          labelText: 'Search country',
          hintText: 'Start typing to search',
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );

    return selectedCountry;
  }
}
