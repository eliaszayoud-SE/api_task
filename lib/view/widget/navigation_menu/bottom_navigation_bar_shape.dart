import 'package:api_task_6/core/class/helper_functions.dart';
import 'package:api_task_6/core/constatnt/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_bottom_navigation_clipper.dart';

class BottomNavigationBarShape extends StatelessWidget {
  const BottomNavigationBarShape({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomBottomNavigationClipper(),
      child: Container(
        color: AppColors.white,
        width:HelperFunctions.screenWidth(),
        height: 106.h,
      ),
    );
  }
}