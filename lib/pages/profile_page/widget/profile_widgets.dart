
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
class ProfileOrderWidget extends StatelessWidget {
  const ProfileOrderWidget(
      {super.key, required this.image, required this.lable});

  final String image;
  final String lable;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(
        children: [
          SvgPicture.asset(image),
          Positioned(
              bottom: 0,
              left: -2,
              child: Container(
                width: 20.w,
                height: 20.h,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(3.r)),
                child: const Center(child: Text('0')),
              ))
        ],
      ),
      SizedBox(height: 10.h),
      Text(lable, style: Theme.of(context).textTheme.bodyMedium),
    ]);
  }
}

class ProfileButton extends StatelessWidget {
  const ProfileButton(
      {super.key,
        required this.lable,
        required this.onTap,
        required this.icon,
        this.iconColor = Colors.black});

  final String lable;
  final Function() onTap;
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 1, color: Colors.grey.shade400))),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(icon, size: 25, color: iconColor),
              SizedBox(width: 10.w),
              Text(lable,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontSize: 15.sp)),
              const  Spacer(),
              const RotatedBox(
                quarterTurns: -2,
                child: Icon(Icons.arrow_back_ios_new_sharp,
                    color: Colors.black, size: 20),
              ),
            ],
          ),
        ));
  }
}
