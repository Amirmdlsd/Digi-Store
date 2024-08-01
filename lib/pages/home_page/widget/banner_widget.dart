import 'package:digi_store/pages/home_page/model/home_model.dart';
import 'package:digi_store/widget/cached_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({
    super.key,
    required this.pageController,
    required this.banner,
  });

  final List<BannerModel> banner;

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: 150.h,
            child: PageView.builder(
              controller: pageController,
              itemCount: banner.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.r),
                      child: CachedImage(imageUrl: banner[index].image)),
                );
              },
            ),
          ),
          Positioned(
            bottom: 20.h,
            left: 30.w,
            child: SmoothPageIndicator(
                controller: pageController, // PageController
                count: banner.length,
                effect: ExpandingDotsEffect(
                    dotHeight: 5.h,
                    dotWidth: 5.w,
                    activeDotColor: Colors.grey,
                    dotColor: Colors.white), // your preferred effect
                onDotClicked: (index) {}),
          )
        ],
      ),
    );
  }
}
