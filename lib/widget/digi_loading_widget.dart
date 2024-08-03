import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class DigiLoadingWidget extends StatelessWidget {
  const DigiLoadingWidget({super.key,this.color=Colors.red});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LoadingAnimationWidget.inkDrop(color: color, size: 25.w);
  }
}
