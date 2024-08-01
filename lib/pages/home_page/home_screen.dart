import 'package:digi_store/gen/assets.gen.dart';
import 'package:digi_store/pages/home_page/controller/home_controller.dart';
import 'package:digi_store/pages/home_page/controller/home_list.dart';
import 'package:digi_store/pages/home_page/widget/banner_widget.dart';
import 'package:digi_store/pages/home_page/widget/home_special_product_list.dart';
import 'package:digi_store/pages/search_page/search_screen.dart';
import 'package:digi_store/pages/single_product_page/single_product_screen.dart';
import 'package:digi_store/widget/cached_image.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../authentication_page/pages/send_code_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  static const String homeScreen = "/HOME_SCREEN";
  final homeController = Get.put(HomeController());
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.only(top: 10.h),
            sliver: SliverAppBar(
                backgroundColor: Colors.white,
                shadowColor: Colors.grey,
                title: GestureDetector(
                  onTap: () {
                    Get.toNamed(SearchScreen.searchScreen);
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    width: double.infinity,
                    height: 40.h,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(12.r)),
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(
                          "اینجا میتونی جستوجو کنی",
                          style: Get.textTheme.bodyMedium
                              ?.copyWith(color: Colors.grey),
                        )),
                        const Icon(
                          Icons.search,
                          size: 30,color: Colors.grey
                        ),
                      ],
                    ),
                  ),
                )),
          ),
          SliverToBoxAdapter(
            child: Column(children: [
              SizedBox(height: 10.h),
              HomePageView(
                pageController: homeController.pageController!,
                banner: banner,
              ),
              SizedBox(height: 20.h),
              HomeSpecialProductList(
                image: Assets.svg.freshbasket.path,
                title1: 'پیشنهاد',
                title2: 'شگفت',
                title3: 'انگیز',
                products: productList,
              ),
              SizedBox(height: 40.h),
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 20.w, bottom: 20.h),
                    child: Text("کالای دیجیتال",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(fontSize: 25.sp)),
                  )),
              const HomeDigitalProductWidget(),
              SizedBox(height: 20.h),
              HomeSpecialProductList(
                containerBg: Colors.green,
                image: Assets.svg.freshbasket.path,
                title1: 'پیشنهاد',
                title2: 'شگفت',
                title3: 'انگیز',
                products: productList,
              ),
            ]),
          ),
        ],
      )),
    );
  }
}

class HomeDigitalProductWidget extends StatelessWidget {
  const HomeDigitalProductWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.h,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 9,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: .8,
        ),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Get.toNamed(SingleProductScreen.singleProductScreen);
          },
          child: Container(
            padding: EdgeInsets.all(10.w),
            decoration: BoxDecoration(
                border: Border(
                    right: BorderSide(color: Colors.grey.shade300),
                    bottom: BorderSide(color: Colors.grey.shade300))),
            width: 100.w,
            height: 100.h,
            child: CachedImage(imageUrl: productList[0].image),
          ),
        ),
      ),
    );
  }
}
