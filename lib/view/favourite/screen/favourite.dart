import 'package:api_task_6/core/constatnt/app_sizes.dart';
import 'package:api_task_6/core/constatnt/app_texts.dart';
import 'package:api_task_6/view/favourite/controller/favourite_controller.dart';
import 'package:api_task_6/view/widget/app_bar/custom_app_bar.dart';
import 'package:api_task_6/view/widget/container/circular_container.dart';
import 'package:api_task_6/view/widget/layout/grid_layout.dart';
import 'package:api_task_6/view/widget/product/product_card/product_card_vertical.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          AppTexts.favourite,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        leadingIcon: CircularContainer(
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              size: 24.sp,
            ),
          ),
        ),
        actions: [
          CircularContainer(
            size: 50,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Iconsax.heart,
                size: 24.sp,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(AppSizes.defaultSpace),
            child: GetBuilder<FavouriteController>(
              builder: (controller) {
                return Column(
                  children: [
                    GridLayout(
                        itemBuilder: (context, index) {
                          return ProductCardVertical(
                              isFavourite: true,
                              product: controller.favouriteProduct[index]);
                        },
                        itemCount: controller.favouriteProduct.length)
                  ],
                );
              },
            )),
      ),
    );
  }
}
