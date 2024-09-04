import 'package:digi_store/gen/assets.gen.dart';
import 'package:digi_store/pages/authentication_page/controller/auth_controller.dart';
import 'package:digi_store/pages/authentication_page/pages/verification_code_screen.dart';
import 'package:digi_store/widget/digi_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SendCodeScreen extends StatelessWidget {
  SendCodeScreen({super.key});

  static const String sendCodeScreen = "/SEND_CODE_SCREEN";
  final _controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Image.asset(
                  Assets.png.logo.path,
                ),
              ),
              Text(
                'برای ورود یا ثبت نام در دیجی استور شماره موبایل یا'
                ' پست الکترونیک خود را وارد کنید',
                style: TextStyle(fontSize: 12.sp),
              ),
              SizedBox(height: 20.h),
              DigiInput(
                controller: _controller.emailController,
                hintText: "شماره موبایل پست الکترونیک",
              ),
              SizedBox(height: 20.h),
              DigiButton(
                onTap: () {
                  Get.offNamedUntil(
                      VerificationCodeScreen.verificationCodeScreen,
                      (route) => false,
                      arguments: _controller.emailController.text);
                },
                lable: "ورودبه دیجی استور",
              ),
              SizedBox(height: 100.h)
            ],
          ),
        ),
      ),
    );
  }
}

class DigiInput extends StatelessWidget {
  const DigiInput(
      {super.key,
      required this.hintText,
      this.prefixIcon,
      required this.controller,
      this.textAlign = TextAlign.center});

  final String hintText;
  final Widget? prefixIcon;
  final TextEditingController controller;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: TextField(
        textAlign: textAlign,
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          filled: true,
          fillColor: Colors.grey.shade200,
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide.none,
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
              width: 2.0, // Adjust the width if needed
            ),
          ),
        ),
      ),
    );
  }
}

class DigiButton extends StatelessWidget {
  const DigiButton({
    super.key,
    required this.lable,
    required this.onTap,
    this.fontSize=12
  });

  final String lable;
  final Function() onTap;
  final int fontSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          elevation: 0,
            minimumSize: Size(double.infinity, 40.h),
            backgroundColor: Colors.red.shade600,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r))),
        child: Text(lable,
            style: TextStyle(
                color: Colors.white,
                fontSize: fontSize.sp,
                fontWeight: FontWeight.bold)));
  }
}
