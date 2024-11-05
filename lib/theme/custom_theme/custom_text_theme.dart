import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextTheme {

  static TextTheme textTheme = TextTheme(
    // headlineLarge: const TextStyle().copyWith(
    //     fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 32.0.sp, fontWeight: FontWeight.w900, fontFamily: 'Raleway',color: const Color(0xffECECEC)),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 16.0.sp, fontWeight: FontWeight.w600, color: const Color(0xffD8D8D8)),
    // titleLarge: const TextStyle().copyWith(
    //     fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.black),
    // titleMedium: const TextStyle().copyWith(
    //     fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.black),
    // titleSmall: const TextStyle().copyWith(
    //     fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.black),
    // bodyLarge: const TextStyle().copyWith(
    //     fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black),
    // bodyMedium: const TextStyle().copyWith(
    //     fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.black),
    // bodySmall: const TextStyle().copyWith(
    //     fontSize: 14.0,
    //     fontWeight: FontWeight.w500,
    //     color: Colors.black.withOpacity(0.5)),
    labelLarge: const TextStyle().copyWith(
        fontSize: 32.sp, fontWeight: FontWeight.w700, fontFamily: 'Raleway',),
    labelSmall: const TextStyle().copyWith(
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,),
    labelMedium: const TextStyle().copyWith(
      fontSize: 16.sp,
      fontFamily: 'Raleway',
      fontWeight: FontWeight.w600,)
  );
}