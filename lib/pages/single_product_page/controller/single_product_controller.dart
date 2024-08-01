import 'package:digi_store/widget/custom_snackbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SingleProductController extends GetxController {
  PageController? pageController;
  RxInt selectedColor = 0.obs;

  final commentTitle = TextEditingController();
  final commentPlus = TextEditingController();
  final commentMines = TextEditingController();
  final commentDescription = TextEditingController();

  addToComments() {
    // if (selectedColor.value >= 0) {
    //   CustomSnackbar.showSnackBar(msg: "لطفا نمره خود را ثبت کنید");
    // } else {
    if (commentTitle.text.isNotEmpty &&
        commentPlus.text.isNotEmpty &&
        commentMines.text.isNotEmpty &&
        commentDescription.text.isNotEmpty) {
      CustomSnackbar.showSnackBar(msg: "دیدگاه شما ثبت شد");

      Get.back();
    } else {
      CustomSnackbar.showSnackBar(msg: "لطفا فیلد هارا پر کیند");
    }
  }
// }

  Text showResult(RxInt indx) {
    if (indx.value == 1) {
      return Text(
        "خیلی بد",
        style: Get.theme.textTheme.bodyMedium?.copyWith(
          color: Colors.red,
        ),
      );
    } else if (indx.value == 2) {
      return Text(
        " بد",
        style: Get.theme.textTheme.bodyMedium?.copyWith(
          color: Colors.orange,
        ),
      );
    } else if (indx.value == 3) {
      return Text(
        "معمولی",
        style: Get.theme.textTheme.bodyMedium?.copyWith(
          color: Colors.yellow,
        ),
      );
    } else if (indx.value == 4) {
      return Text(
        "خوب",
        style: Get.theme.textTheme.bodyMedium?.copyWith(
          color: Colors.lightGreenAccent,
        ),
      );
    } else if (indx.value == 5) {
      return Text(
        "عالی",
        style: Get.theme.textTheme.bodyMedium?.copyWith(
          color: Colors.green,
        ),
      );
    }
    return const Text('');
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    pageController = PageController();
  }
}
