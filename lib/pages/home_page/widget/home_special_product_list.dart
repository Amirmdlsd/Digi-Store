import 'package:digi_store/pages/home_page/controller/home_list.dart';
import 'package:digi_store/pages/home_page/model/home_model.dart';
import 'package:digi_store/pages/product_list_page/product_list_screen.dart';
import 'package:digi_store/pages/single_product_page/single_product_screen.dart';
import 'package:digi_store/widget/cached_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../widget/digi_discount_container.dart';

class HomeSpecialProductList extends StatelessWidget {
  const HomeSpecialProductList({
    super.key,
    this.containerBg = Colors.red,
    required this.image,
    required this.title1,
    required this.title2,
    required this.title3,
    required this.products,
  });

  final List<ProductModel> products;

  final Color containerBg;
  final String image;
  final String title1;
  final String title2;
  final String title3;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      color: containerBg,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: 20.w),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '$title1\n',
                      ),
                      TextSpan(
                        text: '$title2\n',
                      ),
                      TextSpan(
                        text: '$title3\n',
                      ),
                    ],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
                Image.asset(image, height: 70.h)
              ],
            ),
            SizedBox(width: 20.w),
            SizedBox(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: products.length + 1,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  if (index == products.length) {
                    return Container(
                      margin: EdgeInsets.all(8.w),
                      width: 180.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Get.toNamed(ProductListScreen.productListScreen);
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.arrow_circle_left_outlined,size: 150.w,color: Colors.lightBlue),
                            SizedBox(width: 10.h),
                            Text("مشاهده همه",style: Get.textTheme.bodyMedium),
                          ],
                        ),
                      ),
                    );
                  } else {
                    // Show the product item
                    return ProductItem(products: products[index]);
                  }
                },
              ),
            )

          ],
        ),
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.products,
  });

  final ProductModel products;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: products.isSpecial,
      child: GestureDetector(
        onTap: () {
          Get.toNamed(SingleProductScreen.singleProductScreen);
        },
        child: Container(
          margin: EdgeInsets.all(8.w),
          width: 180.w,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12.r)),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 130.h,
                child: CachedImage(imageUrl: products.image),
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Text(
                  products.title,
                  style: TextStyle(fontSize: 14.sp),
                  textAlign: TextAlign.justify,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DigiDiscountContainer(
                      discount: products.discount,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${products.finalPrice} تومان',
                            style: Theme.of(context).textTheme.bodyMedium),
                        Text(products.price.toString(),
                            style: Theme.of(context).textTheme.labelSmall),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
