import 'package:api_task_6/view/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../core/constatnt/app_colors.dart';
import '../../../core/constatnt/app_sizes.dart';

class HomeCategory extends StatelessWidget {
  const HomeCategory({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final controller = HomeController.instance;
    return Obx((){
      return controller.isCategoryLoading.value ?const Center(child: CircularProgressIndicator(),) :
      SizedBox(
        height: 40.h,
        child: Padding(
          padding: const EdgeInsets.only(left: AppSizes.defaultSpace),
          child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return GestureDetector(
                  child: Container(
                    width: 108.w,
                    height: 40.h,
                    padding: EdgeInsets.symmetric(horizontal: 39.w, vertical: 11.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd.r),
                        color: AppColors.white
                    ),
                    child: Text(
                      controller.categoryModel.data![index].name!,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                );
              }, separatorBuilder: (context, index){
            return SizedBox(width: AppSizes.spaceBtwItems.w,);
          }, itemCount: controller.categoryModel.data!.length),
        ),
      );
    });
  }
}