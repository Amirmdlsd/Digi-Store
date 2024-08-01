import 'package:digi_store/pages/authentication_page/pages/send_code_screen.dart';
import 'package:digi_store/pages/home_page/controller/home_list.dart';
import 'package:digi_store/pages/single_product_page/controller/single_product_controller.dart';
import 'package:digi_store/pages/single_product_page/widget/star_widget.dart';
import 'package:digi_store/widget/cached_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class RegisterCommentScreen extends StatelessWidget {
  RegisterCommentScreen({super.key});

  final singleController = Get.put(SingleProductController());

  static const String registerCommentScreen = '/REGISTER_COMMENT_SCREEN';
  RxInt currentScore = 0.obs;
  final _registerCommentController = SingleProductController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: commentAppBar(context),
      body: SafeArea(child: Obx(() {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: singleController.showResult(currentScore)),
            SizedBox(
                width: double.infinity,
                child: ScoreProductWidget(currentScore: currentScore)),
            SizedBox(height: 10.h),
            const Divider(
              indent: 30,
              endIndent: 30,
            ),
            SizedBox(height: 30.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("دیدگاه خود را شرح دهید"),
                    SizedBox(height: 10.h),
                    Text(
                      "عنوان نظر",
                      style: TextStyle(
                          fontSize: 13.sp, fontWeight: FontWeight.w300),
                    ),
                    DigiInput(
                        hintText: "",
                        controller: _registerCommentController.commentTitle),
                    SizedBox(height: 10.h),
                    Text(
                      "نقاط قوت",
                      style: TextStyle(
                          fontSize: 13.sp, fontWeight: FontWeight.w300),
                    ),
                    DigiInput(
                        hintText: "",
                        controller: _registerCommentController.commentPlus),
                    SizedBox(height: 10.h),
                    Text(
                      "نقاط ضعف",
                      style: TextStyle(
                          fontSize: 13.sp, fontWeight: FontWeight.w300),
                    ),
                    DigiInput(
                        hintText: "",
                        controller: _registerCommentController.commentMines),
                    SizedBox(height: 10.h),
                    Text(
                      "متن نظر",
                      style: TextStyle(
                          fontSize: 13.sp, fontWeight: FontWeight.w300),
                    ),
                    DigiInput(
                        hintText: "",
                        controller:
                            _registerCommentController.commentDescription),
                    SizedBox(height: 50.h),
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            minimumSize: Size(double.infinity, 40.h)),
                        onPressed: () {
                          _registerCommentController.addToComments();
                        },
                        child: Text(
                          "ثبت دیدگاه",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: Colors.grey),
                        ))
                  ]),
            ),
          ],
        );
      })),
    );
  }

  PreferredSize commentAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(50.h),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Icons.arrow_back)),
            const Spacer(),
            SizedBox(
                width: 50,
                height: 50,
                child: CachedImage(imageUrl: productList[0].image)),
            Padding(
              padding: EdgeInsets.only(right: 10.w, left: 30.w),
              child: SizedBox(
                  width: 200.w,
                  child: Text(
                    productList[0].title,
                    style: Theme.of(context).textTheme.bodyMedium,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
