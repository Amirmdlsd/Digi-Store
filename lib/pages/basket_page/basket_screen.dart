import 'package:digi_store/widget/cached_image.dart';
import 'package:digi_store/widget/digi_discount_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BasketScreen extends StatelessWidget {
  const BasketScreen({super.key});

  static const String basketScreen = "/BASKET_SCREEN";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: SafeArea(
          child: SizedBox(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) =>
                  Container(
                    margin: EdgeInsets.only(bottom: 15.h),
                    height: 150.h,
                    width: double.infinity,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 2,
                          offset: const Offset(2, 1))
                    ]),
                    child: Row(
                      children: [
                        SizedBox(
                            width: 120.w,
                            child: const CachedImage(
                                imageUrl:
                                "https://dkstatics-public.digikala.com/digikala-products/"
                                    "1d5dece1813f54b0e866249f972653187d9d982d_1676877540."
                                    "jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/quality,q_80")),
                            SizedBox(width: 10.w),
                        Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:  EdgeInsets.only(left: 10.w,right:10.w,top: 10.h),
                                  child: Text(
                                    "گوشی موبایل شیائومی مدل Poco M5s دو سیم کارت ظرفیت "
                                        "128 گیگابایت و رم 4 گیگابایت - گلوبال",
                                    style: Theme
                                        .of(context)
                                        .textTheme
                                        .bodyMedium,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                Row(
                                  children: [
                                    DigiDiscountContainer(discount: 2),
                                    SizedBox(width: 10.w),
                                    Text("1200000",
                                        style: Theme
                                            .of(context)
                                            .textTheme
                                            .labelSmall),
                                  ],
                                ),
                                Text("120000 تومان",
                                    style: Theme
                                        .of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(fontSize: 16.sp)),
                                SizedBox(height: 10.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 110.w,
                                      height: 30.h,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12.r),
                                          border: Border.all(
                                              color: Colors.grey.shade400)),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment
                                            .spaceBetween,
                                        children: [
                                          IconButton(onPressed: () {},
                                              icon:  Icon(Icons.add,size: 17.w,)),
                                          const Text(
                                            '1',
                                            style: TextStyle(color: Colors.red),
                                          ),
                                          IconButton(
                                              onPressed: () {},
                                              icon:  Icon(Icons.remove,size:17.w,)),
                                        ],
                                      ),
                                    ),
                                    IconButton(onPressed: (){},
                                        icon: Icon(Icons.delete,color: Colors.red,size: 20.w,))
                                  ],
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
            ),
          )),
    );
  }
}
