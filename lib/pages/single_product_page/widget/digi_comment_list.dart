import 'package:digi_store/pages/single_product_page/comment_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DigiCommentListWidget extends StatelessWidget {
  const DigiCommentListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: ListView.builder(
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          if (index == 5) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(10.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      offset: const Offset(1, 1),
                      blurRadius: 3,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                width: 150.w,
                child: Center(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.lightBlue
                    ),
                      onPressed: () {
                      Get.toNamed(CommentListScreen.commentListScreen);
                      },
                      child: Text(
                        "مشاهده همه",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),
                      )),
                ),
              ),
            );
          } else {
            // The regular list items
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(10.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      offset: const Offset(1, 1),
                      blurRadius: 3,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                width: 300.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("باهرتزوروشنایی بالا",
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10.h),
                    Text(
                        "باهرتزوروشنایی بالا باهرتزوروشنایی باهرتزوروشنایی باهرتزوروشنایی باهرتزوروشناییباهرتزوروشنایی باهرتزوروشنایی باهرتزوروشنایی باهرتزوروشنایی باهرتزوروشنایی ",
                        style: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.normal),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis),
                    Spacer(),
                    Row(
                      children: [
                        Text('شش روز پیش',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold)),
                        SizedBox(width: 20.w),
                        Text("کاربر دیجی استور",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold))
                      ],
                    )
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
