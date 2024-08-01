import 'package:digi_store/pages/single_product_page/controller/single_product_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../widget/cached_image.dart';

class SingleProductImage extends StatelessWidget {
  SingleProductImage({
    super.key,
  });

  final SingleProductController singleController =
      Get.put(SingleProductController());

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            height: 200.h,
            width: double.infinity,
            child: PageView.builder(
              controller: singleController.pageController,
              itemBuilder: (context, index) => const CachedImage(
                  imageUrl:
                      'https://dkstatics-public.digikala.com/digikala-adservice-banners/72a5fb7874c7b1b358440886eb25af6e8bbea225_1720512365.jpg?x-oss-process=image/quality,q_95'),
            )),
        Positioned(
          bottom: 20.h,
          left: 30.w,
          child: SmoothPageIndicator(
              controller: singleController.pageController!,
              // PageController
              count: 3,
              effect: ExpandingDotsEffect(
                  dotHeight: 5.h,
                  dotWidth: 5.w,
                  activeDotColor: Colors.red,
                  dotColor: Colors.grey),
              // your preferred effect
              onDotClicked: (index) {}),
        )
      ],
    );
  }
}
