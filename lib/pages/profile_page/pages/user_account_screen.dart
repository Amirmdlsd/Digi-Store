import 'package:digi_store/pages/profile_page/pages/edit_mobile_screen.dart';
import 'package:digi_store/pages/profile_page/pages/edit_profile.dart';
import 'package:digi_store/pages/profile_page/pages/national_code_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class UserAccountScreen extends StatelessWidget {
  const UserAccountScreen({super.key});

  static const String userAcountScreen = "/USER_PROFILE_SCREEN";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("اطلاعات حساب کاربری"),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("اطلاعات شخصی", style: Get.textTheme.bodyMedium),
            SizedBox(height: 10.h),
            UserAccountItem(
                onTap: () {
                  Get.toNamed(EditNameScreen.editNameScreen);
                },
                lable: "نام و نام خانوادگی",
                text: "امیرمحمددلشاد"),
            SizedBox(height: 20.h),
            UserAccountItem(
                onTap: () {
                  Get.toNamed(EditMobileScreen.editMobileScreen);
                },
                lable: "شماره تلفن همراه",
                text: "09152195256"),
            SizedBox(height: 20.h),
            UserAccountItem(
                onTap: () {
                  Get.toNamed(EditNationalCodeScreen.editNationalCodeScreen);
                },
                lable: "کدملی",
                text: "092125555"),
            SizedBox(height: 20.h),
            UserAccountItem(
                onTap: () {
                  Get.toNamed(EditNameScreen.editNameScreen);
                },
                lable: "پست الکترونیک",
                text: "-"),
            SizedBox(height: 20.h),
            UserAccountItem(
                onTap: () {
                  Get.toNamed(EditNameScreen.editNameScreen);
                },
                lable: "رمز عبور",
                text: "*******"),
          ],
        ),
      )),
    );
  }
}

class UserAccountItem extends StatelessWidget {
  const UserAccountItem({
    super.key,
    required this.onTap,
    required this.lable,
    required this.text,
  });

  final Function() onTap;
  final String lable;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 65.h,
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(color: Colors.grey.shade200, width: 1.w))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(lable,
                style: Get.textTheme.bodyMedium
                    ?.copyWith(fontSize: 14.sp, color: Colors.grey)),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(text,
                    style: Get.textTheme.bodyMedium?.copyWith(fontSize: 16.sp)),
                const RotatedBox(
                    quarterTurns: -2,
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 20,
                    ))
              ],
            ),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }
}
