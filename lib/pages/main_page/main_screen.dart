import 'package:digi_store/pages/basket_page/basket_screen.dart';
import 'package:digi_store/pages/category_page/category_screen.dart';
import 'package:digi_store/pages/home_page/home_screen.dart';
import 'package:digi_store/pages/main_page/controller/main_controller.dart';
import 'package:digi_store/pages/main_page/widget/btm_nav.dart';
import 'package:digi_store/pages/profile_page/pages/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final mainController = Get.put(MainController());

  static const String mainScreen = "/MAIN_SCREEN";

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: IndexedStack(
          index: mainController.index.value,
          children: [
            HomeScreen(),
            const CategoryScreen(),
            BasketScreen(),
            ProfileScreen()
          ],
        )),
        bottomNavigationBar: MainBtmNavigation(mainController: mainController),
      );
    });
  }
}
