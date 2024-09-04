import 'package:digi_store/pages/authentication_page/pages/send_code_screen.dart';
import 'package:digi_store/pages/profile_page/pages/edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class EditNationalCodeScreen extends StatelessWidget {
  EditNationalCodeScreen({super.key});

  static const String editNationalCodeScreen = "/EDIT_NATIONAL_CODE_SCREEN";
  RxBool mobileConfirm = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: editBackBtn(),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                Center(
                  child: Text("کدملی خود را وارد نمایید",
                      style: Get.textTheme.bodyMedium?.copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700)),
                ),
                SizedBox(height: 10.h),
                Text("کدملی", style: Get.textTheme.bodyMedium),
                DigiInput(
                    hintText: "...", controller: TextEditingController()),

                const Spacer(),
                DigiButton(
                  lable: "تایید اطلاعات",
                  onTap: () {
                    Get.back();
                  },
                ),
                SizedBox(height: 10.h),
              ],
            ),
          ),
        ));
  }
}
