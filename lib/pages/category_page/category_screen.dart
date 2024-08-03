import 'package:digi_store/pages/home_page/controller/home_list.dart';
import 'package:digi_store/pages/product_list_page/product_list_screen.dart';
import 'package:digi_store/pages/sub_category_page/page/sub_category_screen.dart';
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
                Get.toNamed(SubCategoryScreen.subCategoryScreen);
              },
              child: SizedBox(
                height: 180.h,
                width: 110.h,
                child: Column(
                  children: [
                    SizedBox(
                        height: 120.h,
                        width: double.infinity,
                        child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12.r),
                              topRight: Radius.circular(12.r)

                            ),
                            child: CachedImage(
                                imageUrl: categoryList[index].image))),
                    SizedBox(height: 10.h),
                    Text("موبایل",style: Get.textTheme.bodyMedium)
                  ],
                ),
              ),
            );
          },
        ),
      )),
    );
  }
}
