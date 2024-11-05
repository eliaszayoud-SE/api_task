
import 'package:api_task_6/view/cart/controller/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

import '../../../core/constatnt/app_colors.dart';
import '../../../core/constatnt/app_sizes.dart';
import '../../widget/container/rounded_container.dart';

class DeleteCartContainer extends StatelessWidget {
  const DeleteCartContainer({
    super.key, required this.productId,
  });

  final int productId;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      margin: EdgeInsets.only(left: AppSizes.sm.w),
      width: 58.w,
      height: 104.h,
      backgroundColor: AppColors.darkRed,
      borderRadius: AppSizes.sm.r,
      child: Center(
          child: IconButton(
              color: AppColors.white,
              iconSize: 20.sp,
              onPressed: () {
                CartController.instance.deleteCartItem(productId);
              },
              icon: const Icon(
                Iconsax.trash,
              ))),
    );
  }
}