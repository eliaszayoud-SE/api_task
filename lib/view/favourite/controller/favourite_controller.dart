import 'package:api_task_6/model/product_model.dart';
import 'package:get/get.dart';

class FavouriteController extends GetxController {
  List<ProductData> favouriteProduct = <ProductData>[];

  addToFavourite(ProductData product){
    favouriteProduct.add(product);
    update();
  }

  deleteFromFavourite(ProductData product){
    favouriteProduct.remove(product);
    update();
  }

  bool isSelected(int productId){
    if(favouriteProduct.any((e)=>e.id==productId)){
      return true;
    }
    return false;
  }

}