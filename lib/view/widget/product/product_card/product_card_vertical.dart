import 'package:api_task_6/model/product_model.dart';
import 'package:api_task_6/view/cart/controller/cart_controller.dart';
import 'package:api_task_6/view/favourite/controller/favourite_controller.dart';
import 'package:api_task_6/view/widget/container/circular_container.dart';
import 'package:api_task_6/view/widget/texts/product_price_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/constatnt/app_colors.dart';
import '../../../../core/constatnt/app_sizes.dart';
import '../../../../core/constatnt/image_path.dart';
import '../../texts/product_title_text.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({
    super.key,
    required this.product, this.isFavourite = false,
  });
  final ProductData product;
  final bool isFavourite;

  @override
  Widget build(BuildContext context) {
    Get.put(FavouriteController());
    Get.put(CartController());
    return Container(
      width: 157.w,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm.r),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                height: 100.h,
                width: double.infinity,
                child: Image.asset(
                  ImagePath.product1,
                  fit: BoxFit.fill,
                ), // Added fit for better image handling
              ),
              Positioned(
                  top: 0,
                  left: 0,
                  child: GetBuilder<FavouriteController>(
                    builder: (controller) => IconButton(
                      onPressed: () {
                        if (!controller.isSelected(product.id!)) {
                          controller.addToFavourite(product);
                        } else {
                          controller.deleteFromFavourite(product);
                        }
                      },
                      icon: controller.isSelected(product.id!)
                          ? const Icon(Iconsax.heart5, color: AppColors.lightRed)
                          : const Icon(Iconsax.heart, color: Colors.black),
                    ),
                  )),
            ],
          ),
          SizedBox(
            height: (AppSizes.spaceBtwItems / 2).h,
          ),

          /// Detail
          Padding(
            padding: EdgeInsets.only(left: (AppSizes.defaultSpace / 2).w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Best Seller',
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .apply(color: AppColors.green),
                ),
                SizedBox(
                  height: (AppSizes.spaceBtwItems / 4).h,
                ),
                ProductTitleText(productTitle: product.name!),
              ],
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// Price
               Expanded(
                 flex: 4,
                 child: Padding(
                      padding:
                          EdgeInsets.only(left: (AppSizes.defaultSpace / 2).w),
                        child: ProductPriceText(
                          price: product.price!.toString(),
                          color: AppColors.darkGrey,
                        ),
                      ),
               ),

              !isFavourite ?
              /// Add to Cart Button
              Container(
                width: 34..w,
                height: 35.5.h,

                decoration: BoxDecoration(
                    color: AppColors.green,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(AppSizes.borderRadiusMd.r),
                        bottomRight:
                            Radius.circular(AppSizes.borderRadiusMd.r))),
                child: GetBuilder<CartController>(
                  builder: (controller) {
                    final item = controller.findItemById(product.id!);
                    if (item != null) {
                      return Center(
                        child: Text(
                          '${item.qty}',
                          style: Theme.of(context).textTheme.labelSmall!.apply(color: AppColors.white),
                        ),
                      );
                    }
                    return InkWell(
                        onTap: () {
                          controller.addToCart(
                              product.id!, product.name!, product.price!);
                        },
                        child: Icon(
                          Iconsax.add,
                          color: AppColors.white,
                          size: 24.sp,
                        ));
                  },
                ),
              )
                  : Expanded(
                flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      CircularContainer(
                        size: 16,
                        backgroundColor: AppColors.darkRed,
                      ),
                                    CircularContainer(
                    size: 16,
                    backgroundColor: AppColors.darkBlue,
                                    )
                                  ],),
                  ) ,
            ],
          )
        ],
      ),
    );
  }
}
