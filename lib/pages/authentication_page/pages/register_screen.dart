import 'dart:io';
import 'package:digi_store/gen/assets.gen.dart';
import 'package:digi_store/pages/authentication_page/controller/register_controller.dart';
import 'package:digi_store/pages/authentication_page/pages/send_code_screen.dart';
import 'package:digi_store/pages/authentication_page/widget/map.dart';
import 'package:digi_store/pages/main_page/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class RegisterScreen extends StatelessWidget {
  final registerController = Get.put(RegisterController());
  static const registerScreen = "REGISTER_SCREEN";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UserProfileImagePicker(
                      registerController: registerController),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        registerController.changeUserImage(ImageSource.gallery);
                      },
                      child: Text(
                        "انتخاب عکس",
                        style:
                            Get.textTheme.bodyMedium?.copyWith(fontSize: 18.sp),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text("نام خودرا وارد کنید", style: Get.textTheme.bodyMedium),
                  DigiInput(
                      controller: registerController.nameController,
                      hintText: "مثلا امیر..."),
                  SizedBox(height: 20.h),
                  Text("ایمیل خودرا وارد کنید",
                      style: Get.textTheme.bodyMedium),
                  DigiInput(
                      controller: registerController.emailController,
                      hintText: "مثلا amirmdlsd@gmail.com"),
                  SizedBox(height: 20.h),
                  Text("شماره خودرا وارد کنید",
                      style: Get.textTheme.bodyMedium),
                  DigiInput(
                      controller: registerController.mobileController,
                      hintText: "مثلا 0915219..."),
                  SizedBox(height: 20.h),
                  Obx(() {
                    return Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 100.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(12.r)),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(12.r),
                              child: Image.asset(Assets.png.mapImage.path,
                                  fit: BoxFit.cover)),
                        ),
                        GestureDetector(
                          onTap: () => Get.toNamed(MapScreen.mapScreen),
                          child: Container(
                            width: double.infinity,
                            margin: EdgeInsets.symmetric(horizontal: 10.h),
                            height: 50.h,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(12.r)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 240.w,
                                  child: Text(
                                    registerController.userAddress.value,
                                    style: Get.textTheme.bodyMedium
                                        ?.copyWith(color: Colors.white),
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                const Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    );
                  }),
                  SizedBox(height: 20.h),
                  DigiButton(
                      lable: "ثبت نام",
                      onTap: () {
                        Get.offAllNamed(MainScreen.mainScreen);
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class UserProfileImagePicker extends StatelessWidget {
  final RegisterController registerController;

  const UserProfileImagePicker({super.key, required this.registerController});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Center(
        child: SizedBox(
          width: 120.w,
          height: 120.h,
          child: registerController.imageSelected.value &&
                  registerController.imageHandler.getFile != null
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(120.r),
                  child: Image.file(
                    File(registerController.imageHandler.getFile!.path),
                    fit: BoxFit.cover,
                  ),
                )
              : CircleAvatar(
                  backgroundColor: Colors.grey.shade300,
                  child: Icon(
                    Icons.person,
                    size: 90.w,
                    color: Colors.grey,
                  ),
                ),
        ),
      );
    });
  }
}
