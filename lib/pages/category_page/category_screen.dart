import 'package:digi_store/pages/home_page/controller/home_list.dart';
import 'package:digi_store/pages/product_list_page/product_list_screen.dart';
import 'package:digi_store/widget/cached_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  static const String categoryScreen = "/CATEGORY_SCREEN";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        child: GridView.builder(
          itemCount: categoryList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10.w,
              crossAxisSpacing: 10.h,
              childAspectRatio: 0.9),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Get.toNamed(ProductListScreen.productListScreen);
              },
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: CachedImage(imageUrl: categoryList[index].image)),
            );
          },
        ),
      )),
    );
  }
}
