import 'package:api_task_6/view/widget/container/rounded_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../../../model/cart_model.dart';
import 'add_and_remove_item_from_cart_container.dart';
import 'cart_item_card_body.dart';
import 'delete_cart_container.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    super.key, required this.cart,
  });

  final CartModel cart;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key:  ValueKey(cart.productId),
      startActionPane: ActionPane(
        extentRatio: 0.20.w,
        motion: const ScrollMotion(),
        children: [
          Builder(
            builder: (cont) {
              return  AddAndRemoveItemFromCartContainer(cartModel: cart,);
            },
          ),
        ],
      ),
      endActionPane: ActionPane(
        extentRatio: 0.20.w,
        motion: const ScrollMotion(),
        children: [
          Builder(
            builder: (cont) {
              return  DeleteCartContainer(productId: cart.productId!,);
            },
          ),
        ],
      ),
      child: RoundedContainer(
        padding: EdgeInsets.only(left: 10.w),
        width: 335.w,
        height: 104.h,
        child:  CartItemCardBody(productName: cart.productName!, totalPrice: cart.totalPrice!,),
      ),
    );
  }
}
