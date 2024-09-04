import 'package:digi_store/pages/search_page/search_screen.dart';
import 'package:digi_store/pages/single_product_page/single_product_screen.dart';
import 'package:digi_store/widget/cached_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  static const String productListScreen = "/PRODUCT_LIST_SCREEN";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,


        actions: [
          SizedBox(width: 10.w),
          IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back)),
          Expanded(
              child: Text(
            "دیجی استور",
            style: Get.textTheme.bodyMedium?.copyWith(color: Colors.red,fontSize: 17.sp,fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          )),
          IconButton(
              onPressed: () => Get.toNamed(SearchScreen.searchScreen),
              icon: const Icon(Icons.search)),
          SizedBox(width: 10.w),

        ],
      ),
      body: SafeArea(
          child: CustomScrollView(slivers: [
        SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => ProductListItem(),
                childCount: 10))
      ])),
    );
  }
}

class ProductListItem extends StatelessWidget {
  const ProductListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(SingleProductScreen.singleProductScreen),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        decoration: BoxDecoration(
            border: Border(
                bottom:
                    BorderSide(width: 1, color: Colors.grey.withOpacity(0.5)))),
        margin: EdgeInsets.all(8.h),
        height: 120.h,
        child: Row(
          children: [
            SizedBox(
              width: 120.w,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: const CachedImage(
                    imageUrl:
                        'https://dkstatics-public.digikala.com/digikala-products/b7fedda3d32d943b8bba86ba61cae5d9c8d55368_1686381711.jpg?x-oss-process=image/resize,m_lfit,h_800,w_800/format,webp/quality,q_90'),
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Column(
                children: [
                  SizedBox(
                    width: 180.w,
                    child: Padding(
                      padding: EdgeInsets.only(top: 10.h),
                      child: Text(
                          'گوشی موبایل ریلمی مدل C55 دو سیم کارت ظرفیت 256 گیگابایت و رم 8 گیگابایت',
                          style: Theme.of(context).textTheme.labelMedium,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(12.r),
                              ),
                              child: const Text("5%",
                                  style: TextStyle(color: Colors.white))),
                          Text('21300000 تومان',
                              style: Theme.of(context).textTheme.bodyMedium),
                        ],
                      ),
                      Text('31000000 ',
                          style: Theme.of(context).textTheme.labelSmall)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
