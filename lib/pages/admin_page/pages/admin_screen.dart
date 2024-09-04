import 'package:digi_store/gen/assets.gen.dart';
import 'package:digi_store/pages/admin_page/pages/product_management.dart';
import 'package:digi_store/pages/admin_page/pages/user_management.dart';
import 'package:digi_store/pages/admin_page/widgets/charts.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

class AdminScreen extends StatelessWidget {
  AdminScreen({super.key});

  static const String adminScreen = "/ADMIN_SCREEN";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [DrawerHeader(child: Image.asset(Assets.png.logo.path))],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
            onPressed: () {
              _key.currentState?.openDrawer();
            },
            icon: const Icon(
              Icons.menu_sharp,
              color: Colors.white,
            )),
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "پنل ادمین",
          style: Get.textTheme.bodyMedium
              ?.copyWith(color: Colors.white, fontSize: 16.sp),
        ),
      ),
      body: SafeArea(
        child: Column(children: [
          GestureDetector(
            onTap: () {
              Get.toNamed(ProductManagement.productMnagement);
            },
            child: Container(
              margin: EdgeInsets.only(top: 20.h, right: 10.w, left: 10.w),
              width: double.infinity,
              height: 100.h,
              decoration: BoxDecoration(
                  color: Colors.red.shade300,
                  borderRadius: BorderRadius.circular(12.r)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.production_quantity_limits,
                    color: Colors.white,
                  ),
                  Text(
                    "مدیریت محصولات",
                    style:
                        Get.textTheme.bodyMedium?.copyWith(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.all(5.w),
                      height: 80.h,
                      decoration: BoxDecoration(
                          color: Colors.pink.shade200,
                          borderRadius: BorderRadius.circular(12.r)),
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Icon(Icons.message), Text("پیام ها ")],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(UserManagement.userManagement);
                    },
                    child: Container(
                      margin: EdgeInsets.all(5.w),
                      height: 80.h,
                      decoration: BoxDecoration(
                          color: Colors.purple.shade200,
                          borderRadius: BorderRadius.circular(12.r)),
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.person_2),
                          Text("مدیریت کاربران")
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Container(
            height: 40.h,
            color: Colors.white,
            child: ListView.builder(
                itemCount: chartTitleList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.all(8.0.w),
                      child: Obx(
                        () => chartTitleIndex.value == index
                            ? Container(
                                height: 40.h,
                                padding: EdgeInsets.symmetric(horizontal: 5.w),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.r),
                                    color: Colors.red),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: chartTitleList[index]),
                              )
                            : GestureDetector(
                                onTap: () {
                                  chartTitleIndex.value = index;
                                },
                                child: Align(
                                    alignment: Alignment.center,
                                    child: chartTitleList[index])),
                      ),
                    )),
          ),
          SizedBox(height: 20.h),
          SizedBox(
            height: 200.h,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Obx(() => showChart(chartTitleIndex.value)),
            ),
          )
        ]),
      ),
    );
  }

  Widget showChart(int index) {
    Widget widget = const HoursChart();
    switch (index) {
      case 0:
        widget = const HoursChart();
        break;

      case 1:
        widget = const DailyChart();
        break;

      case 2:
        widget = const MonthlyChart();
        break;

      case 3:
        widget = const YearsChart();
        break;
    }

    return widget;
  }

  List<Widget> chartTitleList = [
    Text("فروش ساعتی", style: Get.textTheme.bodyMedium),
    Text("فروش روزانه", style: Get.textTheme.bodyMedium),
    Text("فروش ماهانه", style: Get.textTheme.bodyMedium),
    Text("فروش روزانه", style: Get.textTheme.bodyMedium),
  ];
  RxInt chartTitleIndex = 0.obs;
}
