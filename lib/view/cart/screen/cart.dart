import 'package:api_task_6/core/constatnt/app_texts.dart';
import 'package:api_task_6/view/cart/controller/cart_controller.dart';
import 'package:api_task_6/view/cart/widget/cart_item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../core/constatnt/app_sizes.dart';
import '../../widget/app_bar/custom_app_bar.dart';
import '../../widget/container/circular_container.dart';
import '../widget/cart_bottom_navigation_bar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          AppTexts.cart,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        leadingIcon: CircularContainer(
          size:30,
          child: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_outlined,
              size: 24.sp,
            ),
          ),
        ),
      ),
      bottomNavigationBar:const CartBottomNavigationBar() ,
      body:  Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.defaultSpace,
              vertical: AppSizes.defaultSpace),
          child: GetBuilder<CartController>(
            builder: (controller){
              return  ListView.separated(itemBuilder: (context, index){
                return CartItemCard(cart: controller.cartItem[index],);
              }, separatorBuilder: (context, index){
                return SizedBox(height: AppSizes.md.h,);
              }, itemCount:controller.cartItem.length);
            },
          )
      ),
    );
  }
}



