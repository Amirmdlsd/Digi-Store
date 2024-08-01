import 'package:digi_store/gen/assets.gen.dart';
import 'package:digi_store/pages/profile_page/pages/user_account_screen.dart';
import 'package:digi_store/pages/profile_page/widget/profile_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../controller/profile_controller.dart';

class ProfileScreen extends StatelessWidget {
   ProfileScreen({super.key});

  static const String profileScreen = "/PROFILE_SCREEN";
   final profileController =Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,

        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: const Text('پروفایل کاربری'),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 200.h,
            width: double.infinity,
            decoration: const BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  offset: Offset(1, 1),
                  spreadRadius: .2,
                  blurRadius: 0),
            ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("امیرمحمد دلشاد",
                    style: Theme.of(context).textTheme.bodyLarge),
                Text("09152195256",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: Colors.grey)),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(Assets.svg.profileWallet, height: 40.h),
                    SizedBox(width: 10.w),
                    const Text("0")
                  ],
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "افزایش اعتبار",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.red),
                    )),
              ],
            ),
          ),
          SizedBox(height: 40.h),
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: Align(
                alignment: Alignment.centerRight,
                child: Text("سفارش‌های من",
                    style: Theme.of(context).textTheme.bodyLarge)),
          ),
          //
          //
          // order status
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            ProfileOrderWidget(
                image: Assets.svg.statusProcessing, lable: "جاری"),
            Container(
                width: 3,
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    border: Border.all(color: Colors.grey.shade200))),
            ProfileOrderWidget(
                image: Assets.svg.statusDelivered, lable: "تحویل داده شده"),
            Container(
                width: 3,
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    border: Border.all(color: Colors.grey.shade200))),
            ProfileOrderWidget(
                image: Assets.svg.statusReturned, lable: "مرجوع شده"),
          ]),
          SizedBox(height: 30.h),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade400,
                        offset: const Offset(1, 1),
                        spreadRadius: 2,
                        blurRadius: 1),
                  ]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: Image.asset(
                  Assets.png.logo.path,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  height: 150.h,
                ),
              )),
          SizedBox(height: 30.h),
          ProfileButton(
              lable: "ویرایش مشخصات",
              onTap: () {
                Get.toNamed(UserAccountScreen.userAcountScreen);
              },
              icon: Icons.edit_note_outlined,
              iconColor: Colors.lightBlue),
          ProfileButton(
              lable: "لیست مورد علاقه",
              onTap: () {},
              icon: Icons.favorite,
              iconColor: Colors.red),
          ProfileButton(
              lable: "تاریخچه خرید",
              onTap: () {},
              icon: Icons.history,
              iconColor: Colors.lightBlue),
          ProfileButton(
            iconColor: Colors.red,
              lable: "خروج از حساب کاربری", onTap: () {
                profileController.showLogoutDialouge();
          }, icon: Icons.logout),
          SizedBox(height: 20.h)
        ]),
      ),
    );
  }
}
