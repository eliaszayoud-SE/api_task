import 'package:api_task_6/core/constatnt/app_colors.dart';
import 'package:api_task_6/core/constatnt/app_route.dart';
import 'package:api_task_6/view/widget/container/circular_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class CartCounterIcon extends StatelessWidget {
  const CartCounterIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircularContainer(
          child: IconButton(
            onPressed: () {
              Get.toNamed(AppRoute.cart);
            },
            icon: const Icon(Iconsax.shopping_bag),
          ),
        ),
        const Positioned(
          top: 0,
          right: 0,
          child: CircularContainer(
            size: 8,
            backgroundColor: AppColors.darkRed,
          ),
        ),
      ],
    );
  }
}
