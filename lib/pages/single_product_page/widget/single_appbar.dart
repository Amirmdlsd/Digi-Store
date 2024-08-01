import 'package:digi_store/pages/main_page/controller/main_controller.dart';
import 'package:digi_store/pages/main_page/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

AppBar singleAppBar() {
  return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      title: Row(
        children: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(Icons.arrow_back, color: Colors.black)),
          SizedBox(width: 10.w),
          Text(
            'دیجی استور',
            style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 20.sp),
          ),
          const Spacer(),
          Stack(
            children: [
              IconButton(
                  onPressed: () {
                    Get.back();
                    Get.find<MainController>().changeIndex(2);
                  },
                  icon: const Icon(Icons.shopping_cart_outlined)),
              Visibility(
                visible: true,
                child: Positioned(
                  top: 7.h,
                  right: 7.w,
                  child: Container(
                    width: 15.w,
                    height: 15.h,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.red),
                    child: Center(
                      child: Text(
                        "2",
                        style: Get.textTheme.bodyMedium
                            ?.copyWith(fontSize: 10.sp, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ));
}
