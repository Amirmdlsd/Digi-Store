import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomSnackbar {
  static showSnackBar({required String msg}) {
    Get.showSnackbar(GetSnackBar(
      title: msg,
      messageText: Text(
        "",
        style: Get.textTheme.bodyMedium?.copyWith(
          color: Colors.white,
        ),
      ),

      margin: EdgeInsets.all(10.w),
      duration: const Duration(seconds: 3),
    ));
  }
}
