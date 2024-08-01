import 'package:digi_store/pages/product_list_page/product_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  static const String searchScreen = "/SEARCH_SCREEN";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(right: 10.w, left: 10.w),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            const SearchBar(),
            SizedBox(height: 30.h),
            Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) => const ProductListItem())),
          ],
        ),
      )),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 30,
            )),
        SizedBox(width: 10.w),
        Expanded(
          child: SizedBox(
            height: 40.w,
            child: TextField(
              onChanged: (value) {
                debugPrint(value);
              },
              style: Get.textTheme.bodyMedium,
              autofocus: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(12.r)),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  hintText: "اینجا میتونی جستوجو کنی"),
            ),
          ),
        ),
      ],
    );
  }
}
