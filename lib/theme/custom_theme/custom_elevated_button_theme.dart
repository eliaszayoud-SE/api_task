import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constatnt/app_colors.dart';

class CustomElevatedButtonTheme {

  CustomElevatedButtonTheme._();

  static ElevatedButtonThemeData elevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.green,
        padding:  EdgeInsets.symmetric(vertical: 14.h),
        textStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14, fontFamily: 'Raleway',color: Colors.white),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
      )
  );

}