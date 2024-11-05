import 'package:api_task_6/view/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../core/constatnt/app_sizes.dart';
import '../../widget/product/product_card/product_card_vertical.dart';

class HomeFeaturedProduct extends StatelessWidget {
  const HomeFeaturedProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = HomeController.instance;
    return Obx(() {
      return controller.isProductLoading.value
          ? const CircularProgressIndicator()
          : Padding(
              padding:
                  const EdgeInsets.only(left: AppSizes.defaultSpace),
              child: SizedBox(height: 199.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return ProductCardVertical(
                      product: controller.productModel.data![index],
                    );
                  }, separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(width: AppSizes.md.w,);
                },
                ),
              ));
    });
  }
}
