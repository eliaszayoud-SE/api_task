import 'package:api_task_6/core/constatnt/image_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../core/constatnt/app_colors.dart';
import '../../../core/constatnt/app_sizes.dart';
import '../../widget/build_items/build_items.dart';
import '../../widget/custom_text/custom_text.dart';
import '../controller/notification_controller.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.light,
        centerTitle: true,
        title:const Text('Notifications'),
        leading:IconButton(
              onPressed: (){
                Get.back();
              }, icon:  SvgPicture.asset('assets/vectors/back.svg',)
      ),
        actions: [
          SvgPicture.asset('assets/vectors/trash.svg')
        ],
        ),
      body: SafeArea(
          child:SingleChildScrollView(
    child:  GetBuilder<NotificationController>(
        init: NotificationController(),
        builder: (controller) {
          return Padding(padding: const EdgeInsets.all(25),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                      text: 'Recent',
                    fontWeight: FontWeight.w600,
                    textAlign: TextAlign.left,
                    fontSize: AppSizes.fontSizeMd,
                    fontFamily: 'Raleway',
                  ),
                  SizedBox(height: 20.h,),
                  buildRecentItem(
                    context,
                    "Thanks you for purchasing",
                    "Your order will be shipped in 2-4 days",
                    "7 min ago",
                    ImagePath.product1,
                    isOffer: false,
                  ),
                  SizedBox(height: 10.h,),
                  buildRecentItem(
                    context,
                    "We Have New Products With Offers",
                    "\$364.95   \$260.00",
                    "40 min ago",
                    ImagePath.product1,
                    isOffer: true,
                  ),

                  SizedBox(height: 20.h),

                  const CustomText(
                    text: 'Yesterday',
                    fontWeight: FontWeight.w600,
                    textAlign: TextAlign.left,
                    fontSize: AppSizes.fontSizeMd,
                    fontFamily: 'Raleway',
                  ),
                  SizedBox(height: 10.h,),

                  buildRecentItem(
                    context,
                    "We Have New Products With Offers",
                    "\$364.95   \$260.00",
                    "40 min ago",
                    ImagePath.product1,
                    isOffer: true,
                  ),
                  SizedBox(height: 20.h,),

                  buildRecentItem(
                    context,
                    "We Have New Products With Offers",
                    "\$364.95   \$260.00",
                    "40 min ago",
                    ImagePath.product1,
                    isOffer: true,
                  ),

                ],
              ));

        }
    )),
    )
    );
  }
}
