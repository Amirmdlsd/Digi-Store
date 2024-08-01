import 'package:digi_store/pages/authentication_page/pages/send_code_screen.dart';
import 'package:digi_store/pages/single_product_page/controller/single_product_controller.dart';
import 'package:digi_store/pages/single_product_page/widget/digi_comment_list.dart';
import 'package:digi_store/pages/single_product_page/widget/single_appbar.dart';
import 'package:digi_store/pages/single_product_page/widget/single_prduct_suggestion.dart';
import 'package:digi_store/pages/single_product_page/widget/single_product_image.dart';
import 'package:digi_store/widget/digi_discount_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class SingleProductScreen extends StatelessWidget {
  SingleProductScreen({super.key});

  static const String singleProductScreen = '/SINGLE_PRODUCT_SCREEN';

  final singleController = Get.put(SingleProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: singleAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // product images
              SingleProductImage(),

              //   product title
              SizedBox(height: 10.h),
              Text(
                'اسباب بازی مدل خرس و فیل Telescopic مجموعه 2 عددی',
                style: TextStyle(fontSize: 14.sp, color: Colors.black),
              ),

              //   color
              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.only(right: 10.w),
                child: SizedBox(
                  height: 25.h,
                  child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        singleController.selectedColor.value = index;
                      },
                      child: Obx(() {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 5.w),
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          height: 30.h,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: singleController.selectedColor.value ==
                                          index
                                      ? Colors.lightBlue
                                      : Colors.white),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.r)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 30.w,
                                height: 30.h,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle, color: Colors.red),
                              ),
                              SizedBox(width: 10.w),
                              const Text('قرمز')
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),

              // interduce product

              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    offset: const Offset(1, 1),
                    blurRadius: 3,
                    spreadRadius: 2,
                  ),
                ]),
                width: double.infinity,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('درباره محصول',
                          style: Get.textTheme.bodyMedium
                              ?.copyWith(fontSize: 15.sp)),
                     SizedBox(height: 20.h),
                      SeeMoreText(text: """
                      مانتیور نکسار مدل NDM-22VN با سایز 22 اینچ، یک مانیتور باکیفیت با ویژگی‌های بسیار زیاد است. این مانیتور با طراحی شیک و مدرن، تجربه‌ی بصری خیره‌کننده‌ای را برای کاربران فراهم می‌کند. یکی از ویژگی‌های برجسته این مانیتور، صفحه نمایش با کیفیت آن است. این صفحه نمایش با رزولوشن Full HD، تصاویری شفاف و واضح را به نمایش می‌گذارد. این رزولوشن بالا باعث می‌شود که جزئیات کوچک در تصاویر، مانند متن‌ها و جزئیات تصویر، به درستی قابل مشاهده باشند. همچنین مانیتور نکسار NDM-22VN دارای نسبت تصویر 16:9 است که به کاربران امکان مشاهده تصاویر به صورت وسیع را می‌دهد. این نسبت تصویر برای تماشای فیلم‌ها، بازی‌ها و اجرای برنامه‌های چندرسانه‌ای بسیار مناسب است. این مانیتور همچنین دارای زمان پاسخگویی مناسبی است. NDM-22VN با زمان پاسخگویی 5 میلی ثانیه، تصاویر را به طور مناسبی به نمایش در می‌آورد. این ویژگی برای کاربرانی که نیاز به عملکرد سریع دارند بسیار مهم است. دیگر ویژگی‌های این مانیتور شامل زاویه دید سریع، کنتراست بالا، روشنایی قابل تنظیم و ورودی‌های متنوع مانند HDMI و VGA است. همچنین، این مانیتور دارای طراحی باریک و قابل تنظیم است که امکان چرخش و تنظیم ارتفاع را به کاربر می‌دهد. به طور کلی، مانیتور نکسار مدل NDM-22VN یک انتخاب عالی برای کاربرانی است که به دنبال تجربه بصری بی‌نظیر، کیفیت تصویر بالا و ویژگی‌های کاربردی هستند. با ابعاد صفحه نمایش 22 اینچ و ویژگی‌های فنی مناسب، این مانیتور می‌تواند نیازهای گوناگون شما را برآورده کند.

                      """.obs)
                    ]),
              ),

              SizedBox(height: 30.h),
              // comments
              Container(
                width: double.infinity,
                height: 250.h,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('نظرات کاربران',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 14.sp)),
                          Text('18 نطر',
                              style: TextStyle(
                                  color: Colors.lightBlue, fontSize: 14.sp))
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    // comment
                    const DigiCommentListWidget(),
                    //   product suggestion
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10.w),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "محصولات مشابه",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontSize: 20.sp),
                    )),
              ),
              SizedBox(height: 20.h),
              SizedBox(
                width: double.infinity,
                height: 260.h,
                child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>
                        const SIngleProductSuggestion()),
              ),
              SizedBox(
                height: 20.h,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        color: Colors.white,
        width: double.infinity,
        height: 50.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 140.w,
              child: DigiButton(
                lable: 'افزودن به سبدخرید',
                onTap: () {},
              ),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
              Row(
                children: [
                  Text('100000000',
                      style: Theme.of(context).textTheme.labelSmall),
                  SizedBox(width: 5.w),
                  DigiDiscountContainer(discount: 5)
                ],
              ),
              Text('1000000000 تومان',
                  style: Theme.of(context).textTheme.bodyMedium),
            ])
          ],
        ),
      ),
    );
  }
}



class SeeMoreText extends StatelessWidget {
  final RxString text;
  final int maxLength;

  SeeMoreText({super.key, required this.text, this.maxLength = 300});

  final RxBool isExpanded = false.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final displayText = isExpanded.value
          ? text.value
          : text.value.length > maxLength
          ? '${text.value.substring(0, maxLength)}...'
          : text.value;

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(displayText, textAlign: TextAlign.justify,style:Get.textTheme.bodyMedium),
          GestureDetector(
            onTap: () {
              isExpanded.value = !isExpanded.value;
            },
            child: Text(
              isExpanded.value ? 'مشاهده کمتر' : 'مشاهده بیشتر',
              style:  TextStyle(color: Colors.blue,fontSize: 13.sp),
              textAlign: TextAlign.right,
            ),
          ),
          SizedBox(height: 20.h),
        ],
      );
    });
  }
}
