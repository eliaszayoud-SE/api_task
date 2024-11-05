import 'package:api_task_6/model/cart_model.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  static CartController instance = Get.find<CartController>();
  List<CartModel> cartItem = [];
  int subTotal = 0;
  int delivery = 60;
  int totalCost = 0;

  CartModel? findItemById(int productId) {
    for (var item in cartItem) {
      if (item.productId == productId) {
        return item;
      }
    }
    return null;
  }

  void addToCart(int productId, String productName, int productPrice) {
    final existingItem = findItemById(productId);

    if (existingItem != null) {
      existingItem.qty = (existingItem.qty ?? 0) + 1;
      existingItem.totalPrice = existingItem.qty! * existingItem.productPrice!;
    } else {
      cartItem.add(CartModel(
        productId: productId,
        productName: productName,
        productPrice: productPrice,
        qty: 1,
        totalPrice: productPrice
      ));
    }
    totalCost = getSubTotal() + delivery;
    update();
  }

  void deleteCartItem(int productId) {
    cartItem.removeWhere((e)=>e.productId == productId);
    totalCost = getSubTotal() + delivery;
    update();
  }

  void removeFromCart(int productId) {
    final existingItem = findItemById(productId);

    if (existingItem != null) {
      if (existingItem.qty! > 1) {
        existingItem.qty = existingItem.qty! - 1;
        existingItem.totalPrice = existingItem.qty! * existingItem.productPrice!;
      }
      totalCost = getSubTotal() + delivery;
      update();
    }
  }

  getSubTotal(){
    subTotal = 0;
    for(var item in cartItem){
      subTotal += item.totalPrice!;
    }
    return subTotal;
  }

}
