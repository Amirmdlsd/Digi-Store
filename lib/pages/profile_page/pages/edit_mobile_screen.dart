import 'package:digi_store/pages/authentication_page/pages/send_code_screen.dart';
import 'package:digi_store/pages/profile_page/pages/edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class EditMobileScreen extends StatelessWidget {
  EditMobileScreen({super.key});

  static const String editMobileScreen = "/EDIT_MOBILE_SCREEN";
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
                  child: Text("شماره موبایل خود را وارد نمایید",
                      style: Get.textTheme.bodyMedium?.copyWith(
                          fontSize: 16.sp, fontWeight: FontWeight.w700)),
                ),
                SizedBox(height: 10.h),
                Text("شماره موبایل", style: Get.textTheme.bodyMedium),
                DigiInput(
                    hintText: "0915...", controller: TextEditingController()),
                SizedBox(height: 20.h),
                DigiButton(
                  lable: "تایید شماره",
                  onTap: () {
                    mobileConfirm.value = true;
                  },
                ),
                SizedBox(height: 50.h),
                Obx(() => Visibility(
                    visible: mobileConfirm.value,
                    child: confirmMobileNumver())),
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

  Widget confirmMobileNumver() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("کدتایید", style: Get.textTheme.bodyMedium),
      DigiInput(hintText: "****", controller: TextEditingController()),
      SizedBox(height: 20.h),
      DigiButton(
        lable: "تایید شماره",
        onTap: () {
          Fluttertoast.showToast(
              msg: "شماره تایید شد",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.TOP,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.greenAccent.shade700,
              textColor: Colors.white,
              fontSize: 16.0);
        },
      ),
    ]);
  }
}
