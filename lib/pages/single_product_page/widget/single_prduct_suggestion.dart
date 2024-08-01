import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widget/cached_image.dart';
import '../../../widget/digi_discount_container.dart';

class SIngleProductSuggestion extends StatelessWidget {
  const SIngleProductSuggestion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      decoration: const BoxDecoration(
          border: Border(left: BorderSide(color: Colors.grey, width: 0.5))),
      margin: EdgeInsets.only(right: 10.w),
      width: 180.w,
      child: Column(children: [
        SizedBox(
          height: 150.h,
          child: const CachedImage(
              imageUrl:
                  'https://dkstatics-public.digikala.com/digikala-products/d7d682741921155dfa399de576dbca58b960557d_1713167098.jpg?x-oss-process=image/resize,m_lfit,h_800,w_800/format,webp/quality,q_90'),
        ),
        SizedBox(height: 10.h),
        const Text(
          "تلویزیون ال ای دی هوشمند ایکس ویژن مدل 43XC745 سایز 43 اینچ",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: 10.h),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DigiDiscountContainer(discount: 5),
                Text(
                  '۱۰,۳۶۹,۰۰۰ تومان',
                  style: TextStyle(fontSize: 14.sp),
                ),
              ],
            ),
            Text(
              '۱۰,۳۶۹,۰۰۰',
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ],
        )
      ]),
    );
  }
}
