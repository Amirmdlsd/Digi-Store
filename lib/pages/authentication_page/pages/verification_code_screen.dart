import 'package:digi_store/gen/assets.gen.dart';
import 'package:digi_store/pages/authentication_page/controller/verification_controller.dart';
import 'package:digi_store/pages/authentication_page/pages/register_screen.dart';
import 'package:digi_store/pages/authentication_page/pages/send_code_screen.dart';
import 'package:digi_store/utils/extentions/timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class VerificationCodeScreen extends StatelessWidget {
  VerificationCodeScreen({super.key, required this.mobile});

  final String mobile;

  static const String verificationCodeScreen = "/VERIFICATION_CODE_SCREEM";
  final _controller = Get.put(VerificationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.png.logo.path),
            SizedBox(height: 30.h),
            Text(" کد به شماره $mobile ارسال شد ",
                style:
                    Get.theme.textTheme.bodyMedium?.copyWith(fontSize: 20.sp)),
            SizedBox(height: 10.h),
            TextButton(
                onPressed: () => Get.offAndToNamed(SendCodeScreen.sendCodeScreen),
                child: Text("شماره اشتباه است / ویرایش شماره",
                    style: Get.theme.textTheme.bodyMedium
                        ?.copyWith(color: Colors.lightBlue))),
            SizedBox(height: 50.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("لطفا کد را وارد کنید",
                    style: Get.theme.textTheme.bodyMedium),
                Obx(() {
                  return Text(_controller.time.value.convertTimer());
                })
              ],
            ),
            DigiInput(hintText: "_ _ _ _", controller: TextEditingController()),
            SizedBox(height: 10.h),
            DigiButton(
              lable: "تایید",
              onTap: () => Get.toNamed(
                RegisterScreen.registerScreen,
              ),
            )
          ],
        ),
      )),
    );
  }
}
