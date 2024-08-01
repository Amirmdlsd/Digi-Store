import 'package:digi_store/pages/authentication_page/pages/send_code_screen.dart';
import 'package:digi_store/pages/single_product_page/register_comment_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CommentListScreen extends StatelessWidget {
  const CommentListScreen({super.key});

  static const String commentListScreen = "?COMMENT_LIST_SCREEN";

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon:const Icon(Icons.arrow_back,color: Colors.black),
          
        ),
        title: Text("10 دیدگاه",style: Theme.of(context).textTheme.bodyMedium),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                margin: EdgeInsets.symmetric(vertical: 10.w),
                decoration: BoxDecoration(
                    border: Border.symmetric(
                        horizontal: BorderSide(color: Colors.grey.shade300))),
                width: double.infinity,
                height: 150.h,
                child: Column(
                  children: [
                    Row(
                      children: [
                        // score
                        Container(
                          height: 20.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            color: Colors.green,
                          ),
                          child: const Center(
                            child: Text("5.0",
                                style: TextStyle(color: Colors.white)),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Text('شش روز پیش',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: Colors.grey,
                                )),
                        SizedBox(width: 30.w),

                        Text('امیرمحمددلشاد',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: Colors.grey,
                                )),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Column(
                        children: [
                          SizedBox(height: 10.h),
                          Divider(
                              indent: 1,
                              endIndent: 10,
                              color: Colors.grey.shade300),
                          SizedBox(height: 10.h),
                          Text(
                            'سلام و وقت بخیر بله از OTG پشتیبانی می کنید ولی به صورت پیش‌فرض '
                            'فعال نیست باید از تنظیمات فعال کنید',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        width: 200.w,
        height: 40.h,
        child: DigiButton(
          lable: "افزودن دیدگاه",
          onTap: () {
            Get.toNamed(RegisterCommentScreen.registerCommentScreen);
          },
        ),
      ),
    );
  }
}
