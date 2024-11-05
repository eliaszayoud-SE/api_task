import 'package:api_task_6/core/constatnt/app_colors.dart';
import 'package:api_task_6/view/widget/container/rounded_container.dart';
import 'package:api_task_6/view/widget/texts/product_price_text.dart';
import 'package:api_task_6/view/widget/texts/product_title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constatnt/app_sizes.dart';
import '../../../core/constatnt/image_path.dart';

class CartItemCardBody extends StatelessWidget {
  const CartItemCardBody({
    super.key, required this.productName, required this.totalPrice,
  });

  final String productName ;
  final int totalPrice;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundedContainer(
          width: 87.w,
          height: 85.h,
          backgroundColor: AppColors.light,
          borderRadius: (AppSizes.md + 4),
          child: Image.asset(
            ImagePath.product1,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(
          width: (AppSizes.spaceBtwItems * 2).w,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               ProductTitleText(productTitle: productName, isCart: true,),
              SizedBox(
                height: (AppSizes.spaceBtwItems / 2).h,
              ),
               ProductPriceText(
                 color: AppColors.darkBlue,
                 price: totalPrice.toString(), isCart: true,),
            ],
          ),
        )
      ],
    );
  }
}
