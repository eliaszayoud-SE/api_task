import 'package:api_task_6/core/constatnt/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductTitleText extends StatelessWidget {
  const ProductTitleText({
    super.key,
    required this.productTitle, this.isCart = false,
  });

  final String productTitle;
  final bool isCart;

  @override
  Widget build(BuildContext context) {
    return Text(productTitle,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context)
            .textTheme
            .labelMedium!
            .apply(color: isCart ? AppColors.darkBlue : AppColors.grey).copyWith(fontSize: isCart ? 13.sp : 14.sp));
  }
}
