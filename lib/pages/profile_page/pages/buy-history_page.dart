import 'package:digi_store/pages/home_page/controller/home_list.dart';
import 'package:digi_store/pages/product_list_page/product_list_screen.dart';
import 'package:digi_store/pages/profile_page/widget/history_product_item.dart';
import 'package:digi_store/widget/cached_image.dart';
import 'package:digi_store/widget/digi_discount_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BuyHistoryPage extends StatelessWidget {
  const BuyHistoryPage({super.key});

  static const String buyHistoryPage = "/BUY_HISTORY_SCREEN";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(Icons.arrow_back),
          ),
          const Expanded(child: Text("تاریخچه خرید")),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete,
                color: Colors.red,
              ))
        ],
      ),
      body: SafeArea(
          child: ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext, index) =>
                  const HistoryProductItem())),
    );
  }
}
