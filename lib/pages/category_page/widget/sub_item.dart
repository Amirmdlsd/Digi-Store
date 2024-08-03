
import 'package:digi_store/pages/single_product_page/single_product_screen.dart';
import 'package:digi_store/widget/cached_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SubCategoryItem extends StatelessWidget {
  const SubCategoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.toNamed(SingleProductScreen.singleProductScreen);
      },
      child: Container(
        width: 150.w,
        height: 180.h,
        decoration: BoxDecoration(
            color: Colors.grey.shade50,
            borderRadius: BorderRadius.circular(12.r)),
        child: Column(children: [
          SizedBox(
            width: double.infinity,
            height: 110.h,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.r),
                  topRight: Radius.circular(12.r)),
              child: const CachedImage(
                  imageUrl:
                  "https://dkstatics-public.digikala.com/digikala-products/2a50dfa66db4b288f22760251745ad88f444b9c9_1662463676.jpg?x-oss-process=image/resize,m_lfit,h_800,w_800/format,webp/quality,q_90"),
            ),
          ),
          SizedBox(height: 10.h),
          Text("گوشی موبایل", style: Get.textTheme.bodyMedium)
        ]),
      ),
    );
  }
}
