import 'dart:io';

import 'package:digi_store/gen/assets.gen.dart';
import 'package:digi_store/pages/intro_page/controller/splash_controller.dart';
import 'package:digi_store/widget/digi_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../utils/internet_connecion.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  static const String splashScreen = "/";
  final splashController = Get.put(SplashController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Image.asset(
                  Assets.png.logo.path,
                  width: 150.w,
                  height: 150.h,
                ),
              ),
            ),
            const DigiLoadingWidget(),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}


