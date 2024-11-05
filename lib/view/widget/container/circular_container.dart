import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constatnt/app_colors.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer(
      {super.key,
        this.size = 40,
        this.child,
        this.margin,
        this.padding,
        // this.showBorder = false,
        // this.borderColor = AppColors.grey,
        this.backgroundColor= AppColors.white});

  final double size;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Widget? child;
  // final bool showBorder;
  // final Color borderColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.w,
      height: size.h,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size.r),
        // border: showBorder ? Border.all(color: borderColor) : null,
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
