import 'package:digi_store/pages/authentication_page/pages/send_code_screen.dart';
import 'package:digi_store/pages/main_page/controller/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  void showLogoutDialouge() {
    Get.defaultDialog(
        title: "",
        backgroundColor: Colors.white,
        middleText: "ایا میخواهید از حسابتان خارج شوید",
        confirm: OutlinedButton(
            style: OutlinedButton.styleFrom(

                side: const BorderSide(
                    color: Colors.red
                ),
                backgroundColor: Colors.white),
            onPressed: () {
              Get.find<MainController>().index.value = 0;
              Get.offAllNamed(SendCodeScreen.sendCodeScreen);
            },
            child: Text(
              "بله",
              style: Get.textTheme.bodyMedium,
            )),
        cancel: OutlinedButton(
            style: OutlinedButton.styleFrom(

                side: const BorderSide(
                  color: Colors.lightBlue
                ),
                backgroundColor: Colors.white),
            onPressed: () {
              Get.back();
            },
            child: Text("خیر", style: Get.textTheme.bodyMedium)));
  }
}
