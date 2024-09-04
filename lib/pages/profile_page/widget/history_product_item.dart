import 'package:digi_store/widget/cached_image.dart';
import 'package:digi_store/widget/digi_discount_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../home_page/controller/home_list.dart';

class HistoryProductItem extends StatelessWidget {
  const HistoryProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      padding: EdgeInsets.all(10.w),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade300))),
      width: double.infinity,
      height: 140.h,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0.w),
            child: SizedBox(
              height: double.infinity,
              width: 100.w,
              child: CachedImage(imageUrl: productList[0].image),
            ),
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.only(top: 10.w, right: 5.w, left: 5.w),
            child: Column(children: [
              Text(
                productList[0].title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 10.h),
              Row(children: [
                DigiDiscountContainer(discount: 3),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${productList[0].finalPrice} تومان',
                        style: Theme.of(context).textTheme.bodyMedium),
                    Text(productList[0].price.toString(),
                        style: Theme.of(context).textTheme.labelSmall),
                  ],
                ),
              ]),
              const Align(
                  alignment: Alignment.centerLeft, child: Text("1403/10/2"))
            ]),
          ))
        ],
      ),
    );
  }
}
