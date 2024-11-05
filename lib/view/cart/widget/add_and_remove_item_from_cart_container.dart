import 'package:api_task_6/model/cart_model.dart';
import 'package:api_task_6/view/cart/controller/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import '../../../core/constatnt/app_colors.dart';
import '../../../core/constatnt/app_sizes.dart';
import '../../widget/container/rounded_container.dart';

class AddAndRemoveItemFromCartContainer extends StatelessWidget {
  const AddAndRemoveItemFromCartContainer({
    super.key, required this.cartModel,
  });

  final CartModel cartModel;

  @override
  Widget build(BuildContext context) {
    final controller = CartController.instance;
    return RoundedContainer(
      margin: EdgeInsets.only(right: AppSizes.sm.w),
      width: 58.w,
      height: 104.h,
      backgroundColor: AppColors.green,
      borderRadius: AppSizes.sm,
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: IconButton(
                iconSize: 14.sp,
                onPressed: () {
                  controller.addToCart(cartModel.productId!, cartModel.productName!, cartModel.productPrice!);
                },
                icon:const Icon(
                  color: AppColors.white,
                  Iconsax.add,
                )),
          ),
          Flexible(
              child: Text(
                '${cartModel.qty}',
                style: TextStyle(color: AppColors.white, fontSize: 14.sp),
              )),
          Expanded(
              flex: 2,
              child: IconButton(
                  color: AppColors.white,
                  iconSize: 14.sp,
                  onPressed: () {
                    controller.removeFromCart(cartModel.productId!);
                  },
                  icon:const Icon(
                    Iconsax.minus,
                  )))
        ],
      ),
    );
  }
}
