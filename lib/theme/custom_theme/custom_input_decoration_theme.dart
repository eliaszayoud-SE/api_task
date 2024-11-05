import 'package:api_task_6/core/constatnt/app_colors.dart';
import 'package:api_task_6/core/constatnt/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomInputDecorationTheme {

  static InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    contentPadding: EdgeInsets.symmetric(horizontal: AppSizes.sm.w, vertical: AppSizes.spaceBtwItems.h),
    fillColor: AppColors.light,
    filled: true,
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd.r),
      borderSide: const BorderSide(width: 1, color: AppColors.light),
    ),
    enabledBorder:  const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd.r),
      borderSide:const  BorderSide(width: 1, color: AppColors.light),
    ),
    focusedBorder:  const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd.r),
      borderSide: const BorderSide(width: 1, color: AppColors.light),
    ),
    errorBorder:  const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd.r),
      borderSide: const BorderSide(width: 1, color: AppColors.darkRed),
    ),
    focusedErrorBorder:  const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd.r),
      borderSide: const BorderSide(width: 1, color: Colors.orange),
    ),
  );
}