import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ScoreProductWidget extends StatelessWidget {
  const ScoreProductWidget({
    super.key,
    required this.currentScore,
  });

  final RxInt currentScore;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 50.h,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 60.w),
          child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>
                  IconButton(
                      onPressed: () {
                        currentScore.value = index + 1;
                      },
                      icon: Icon(
                        currentScore.value > index
                            ? Icons.star
                            : Icons.star_outline,
                        size: 35,
                        color:
                        currentScore.value > index ? Colors.amber : Colors.grey,
                      ))),
        ));
  }
}