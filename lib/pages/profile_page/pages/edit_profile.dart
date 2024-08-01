import 'package:digi_store/pages/authentication_page/pages/send_code_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EditNameScreen extends StatelessWidget {
  const EditNameScreen({super.key});

  static const String editNameScreen = "/EDIT_NAME_SCREEN";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.close))
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),
              Center(
                child: Text("نام و نام خانوادگی خود را وارد نمایید",
                    style: Get.textTheme.bodyMedium?.copyWith(fontSize: 16.sp,fontWeight: FontWeight.w700)),
              ),
              SizedBox(height: 10.h),
              Text("نام", style: Get.textTheme.bodyMedium),
              DigiInput(hintText: "....", controller: TextEditingController()),
              SizedBox(height: 20.h),
              Text(" نام خانوادگی", style: Get.textTheme.bodyMedium),
              DigiInput(hintText: "....", controller: TextEditingController()),
              const Spacer(),
              DigiButton(
                lable: "تایید اطلاعات",
                onTap: () {},
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }
}
