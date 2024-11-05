import 'package:api_task_6/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../core/class/helper_functions.dart';
import '../../../core/constatnt/app_colors.dart';

class CustomBottomNavigationBarItem extends StatelessWidget {
  const CustomBottomNavigationBarItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = NavigationMenuController.instance;
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w, bottom: 20.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...List.generate(controller.screen.length + 1, (index) {
                int i = index > 2 ? index - 1 : index;
                return index == 2
                    ? SizedBox(width: (HelperFunctions.screenWidth() * 0.20).w)
                    : Obx(() => IconButton(
                          color: controller.selectedIndex.value == i
                              ? AppColors.green
                              : null,
                          onPressed: () {
                            controller.selectedIndex.value = i;
                          },
                          icon: Icon(controller.icon[i]),
                          iconSize: 24.sp,
                        ));
              })
            ],
          )),
    );
  }
}
