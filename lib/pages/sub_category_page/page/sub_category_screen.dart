import 'package:digi_store/pages/category_page/widget/sub_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../widget/cached_image.dart';

class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({super.key});

  static const String subCategoryScreen = "/SUB_CATEGORY_SCREEN";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () => Get.back(), icon: const Icon(Icons.arrow_back)),
        title: Text("دسته بندی ها",style: Get.textTheme.bodyMedium),
      ),
      body: SafeArea(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10.w),
            child: GridView.builder(
                    itemCount: 5,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 0.9),
                    itemBuilder: (context, index) => const SubCategoryItem(),
                  ),
          )),
    );
  }
}
