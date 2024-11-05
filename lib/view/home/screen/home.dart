import 'package:api_task_6/core/constatnt/app_sizes.dart';
import 'package:api_task_6/core/constatnt/app_texts.dart';
import 'package:api_task_6/view/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../widget/texts/section_heading.dart';
import '../widget/home_app_bar.dart';
import '../widget/home_category.dart';
import '../widget/home_featured_product.dart';
import '../widget/home_search_bar.dart';
import '../widget/new_arrival_product.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());

    return SingleChildScrollView(
        child: Column(
          children: [
            /// AppBar
            const HomeAppBar(),
            SizedBox(
              height: AppSizes.spaceBtwSections.h,
            ),

            /// Search Bar
            const HomeSearchBar(),
            SizedBox(
              height: AppSizes.spaceBtwSections.h,
            ),

            /// Category
            /// Category Section Title
            SectionHeading(
              title: AppTexts.selectCategory,
              showButton: false,
              padding:
                  EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace.w),
            ),
            SizedBox(
              height: AppSizes.spaceBtwItems.h,
            ),

            /// Category List
            const HomeCategory(),
            SizedBox(
              height: AppSizes.spaceBtwSections.h,
            ),

            /// Popular Product
            /// Popular Product Section Title
            const SectionHeading(
              title: AppTexts.popularProduct,
              padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
            ),

            /// Featured Product List
            const HomeFeaturedProduct(),

            /// New Arrival Section
            /// New Arrival
             SectionHeading(title: AppTexts.newArrival,  padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace.w)),
             const NewArrivalProduct()
          ],
        ),

    );
  }
}

