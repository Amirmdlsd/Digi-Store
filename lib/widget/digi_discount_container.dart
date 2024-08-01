import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DigiDiscountContainer extends StatelessWidget {
  DigiDiscountContainer({
    super.key,
    required this.discount,
  });

  int discount;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Text("$discount%", style: const TextStyle(color: Colors.white)));
  }
}
