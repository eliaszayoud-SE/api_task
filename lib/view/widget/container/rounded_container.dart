import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constatnt/app_colors.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer(
      {super.key,
        this.width = 335,
        this.height = 104,
        this.borderRadius = 8,
        this.child,
        this.margin,
        this.padding,
        this.showBorder = false,
        this.borderColor = AppColors.grey,
        this.backgroundColor= AppColors.white, this.backgroundImage});

  final double width,height, borderRadius;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final String? backgroundImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      height: height.h,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius.r),
        border: showBorder ? Border.all(color: borderColor) : null,
        color: backgroundColor,
        image: backgroundImage != null ? DecorationImage(
          image: AssetImage(
            backgroundImage!
          )
        ) :
          null,
      ),
      child: child,
    );
  }
}
