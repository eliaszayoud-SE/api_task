import 'package:api_task_6/core/class/crud.dart';
import 'package:api_task_6/core/class/status_request.dart';
import 'package:api_task_6/core/constatnt/app_link.dart';
import 'package:api_task_6/model/category_model.dart';
import 'package:api_task_6/model/product_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController instance = Get.find<HomeController>();
  RxBool isCategoryLoading = true.obs;
  RxBool isProductLoading = true.obs;
  Crud crud = Get.find();
  late StatusRequest categoryStatusRequest;
  late StatusRequest productStatusRequest;
  late CategoryModel categoryModel;
  late ProductModel productModel;
  List featuredProduct = [];


  Future<void> getAllCategory() async {
    var response = await crud.getData(AppLink.categories, headers: AppLink.getHeaderToken());

    response.fold((l) {
      categoryStatusRequest = l;  // Handle error here
    }, (r) {
      if (r.isNotEmpty) {
        categoryModel = CategoryModel.fromMap(r);

      } else {
        categoryStatusRequest = StatusRequest.none;
      }
    });

    isCategoryLoading.value = false;
  }

  Future<void> getFeaturedProduct() async {
    var response = await crud.getData(AppLink.product, headers: AppLink.getHeaderToken());
    response.fold((l) {
      productStatusRequest = l;  // Handle error here
    }, (r) {
      if (r.isNotEmpty) {
        productModel = ProductModel.fromMap(r);
        productModel.data!.sort((a, b) => b.evaluation!.compareTo(a.evaluation!));
      } else {
        categoryStatusRequest = StatusRequest.none;
      }
    });

    isProductLoading.value = false;
  }

  Future<void> fetchDate() async {
    await Future.wait([
       getAllCategory(),
       getFeaturedProduct(),
    ]);
  }
  
  @override
  void onInit()async {
    fetchDate();
    super.onInit();
  }

}