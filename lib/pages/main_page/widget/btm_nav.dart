import 'package:digi_store/pages/main_page/controller/main_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MainBtmNavigation extends StatelessWidget {
  const MainBtmNavigation({
    super.key,
    required this.mainController,
  });

  final MainController mainController;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      selectedFontSize: 12.sp,
      unselectedFontSize: 12.sp,
      type: BottomNavigationBarType.fixed,
      currentIndex: mainController.index.value,
      onTap: (int indx) {
        mainController.changeIndex(indx);
      },
      iconSize: 25.h,
      items: [
        const BottomNavigationBarItem(
            activeIcon: Icon(Icons.home, color: Colors.black),
            label: "خانه",
            icon: Icon(
              Icons.home_outlined,
              color: Colors.grey,
            )),
        const BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.category,
              color: Colors.black,
            ),
            label: "دسته بندی ها",
            icon: Icon(
              Icons.category_outlined,
              color: Colors.grey,
            )),
        BottomNavigationBarItem(
            activeIcon: Stack(
              children: [
                const Icon(Icons.shopping_cart, color: Colors.black),
                Visibility(visible: true,                  child: Container(
                    width: 15.w,
                    height: 15.h,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.red),
                    child: Center(
                      child: Text(
                        "2",
                        style: Get.textTheme.bodyMedium
                            ?.copyWith(fontSize: 10.sp, color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
            label: "سبدخرید",
            icon: Stack(
              children: [
                const Icon(Icons.shopping_cart_outlined, color: Colors.grey),
                Visibility(
                  visible: true,
                  child: Container(
                    width: 15.w,
                    height: 15.h,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.red),
                    child: Center(
                      child: Text(
                        "2",
                        style: Get.textTheme.bodyMedium
                            ?.copyWith(fontSize: 10.sp, color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            )),
        const BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.person_2,
              color: Colors.black,
            ),
            label: "پروفایل",
            icon: Icon(
              Icons.person_2_outlined,
              color: Colors.grey,
            )),
      ],
    );
  }
}
