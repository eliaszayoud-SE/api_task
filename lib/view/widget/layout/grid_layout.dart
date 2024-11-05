import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constatnt/app_sizes.dart';

class GridLayout extends StatelessWidget {
  const GridLayout(
      {super.key,
      required this.itemBuilder,
      required this.itemCount,
      this.mainAxisExtent = 199});

  final Widget? Function(BuildContext, int) itemBuilder;
  final int itemCount;
  final double mainAxisExtent;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.symmetric(vertical: AppSizes.md.h),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: AppSizes.defaultSpace.h,
            crossAxisSpacing: AppSizes.defaultSpace.w,
            mainAxisExtent: mainAxisExtent.h),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: itemCount,
        itemBuilder: itemBuilder);
  }
}
