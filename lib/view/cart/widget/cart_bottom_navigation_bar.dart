import 'package:api_task_6/core/constatnt/app_colors.dart';
import 'package:api_task_6/core/constatnt/app_texts.dart';
import 'package:api_task_6/view/cart/controller/cart_controller.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/constatnt/app_sizes.dart';
import '../../widget/texts/product_price_text.dart';

class CartBottomNavigationBar extends StatelessWidget {
  const CartBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(builder: (controller){
      return controller.cartItem.isNotEmpty ?  Container(
        height: 260.h,
        width: 375.w,
        color: AppColors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace.w, vertical: AppSizes.xl.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppTexts.subTotal, style: Theme.of(context).textTheme.labelMedium!.copyWith(color: AppColors.lightGray),),
                  ProductPriceText(price: controller.subTotal.toString(), isCart: true, color: AppColors.darkBlue,),
                ],
              ),
              SizedBox(height: AppSizes.spaceBtwItems.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppTexts.delivery, style: Theme.of(context).textTheme.labelMedium!.copyWith(color: AppColors.lightGray),),
                  ProductPriceText(price: controller.delivery.toString(), isCart: true, color: AppColors.darkBlue,),
                ],
              ),
              SizedBox(height: AppSizes.spaceBtwItems.h,),
              DottedLine(
                direction: Axis.horizontal,
                alignment: WrapAlignment.center,
                lineLength: double.infinity,
                lineThickness: 2.0.h,
                dashLength: 4.0.w,
                dashColor: AppColors.lightGray,
                dashGapLength: 4.0.w,
              ),
              SizedBox(height: AppSizes.spaceBtwItems.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppTexts.totalCost, style: Theme.of(context).textTheme.labelMedium,),
                  ProductPriceText(price: controller.totalCost.toString(), isCart: true, color: AppColors.green,),
                ],
              ),
              SizedBox(height: AppSizes.xl.h,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){}, child: const Text(AppTexts.checkOut), ),
              )
            ],
          ),
        ),
      ) :
          const SizedBox();

    });
  }
}