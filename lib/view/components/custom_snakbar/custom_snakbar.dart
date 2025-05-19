

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void customSnackBar({
  required String message,
  bool isSuccess = true,
}) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.TOP,
    timeInSecForIosWeb: 3,
    backgroundColor: isSuccess ? Colors.green : Colors.red,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}
