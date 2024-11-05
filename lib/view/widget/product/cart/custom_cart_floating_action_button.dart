import 'package:api_task_6/core/constatnt/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/class/helper_functions.dart';

class CustomCartFloatingActionButton extends StatelessWidget {
  const CustomCartFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 2.h,
      left: (HelperFunctions.screenWidth() / 2) - 28.w,
      child: FloatingActionButton(
        onPressed: () {
          Get.toNamed(AppRoute.cart);
        },
        // Ensure the shape is circular
        child: Icon(
          Iconsax.shopping_bag,
          size: 24.sp,
        ), // Change the icon as needed
      ),
    );
  }
}
