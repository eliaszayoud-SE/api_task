import 'package:api_task_6/core/constatnt/app_sizes.dart';
import 'package:api_task_6/core/constatnt/app_texts.dart';
import 'package:api_task_6/core/constatnt/image_path.dart';
import 'package:api_task_6/view/widget/app_bar/custom_app_bar.dart';
import 'package:api_task_6/view/widget/product/cart/cart_counter_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      leadingIcon: IconButton(onPressed: (){
        Scaffold.of(context).openDrawer();
      }, icon: SvgPicture.asset(ImagePath.hamburgarIcon),),
      title: SizedBox(
        child: Stack(
          children: [
            Padding(
              padding:  EdgeInsets.only(left: AppSizes.md.w, top: AppSizes.md.h, ),
              child: Text(AppTexts.explore, style: Theme.of(context).textTheme.labelLarge),
            ),
            Positioned(top: 5.h, left: -5.w,child:  SvgPicture.asset(ImagePath.onBoardingIconOne,   color: Colors.black,),)
          ],
        ),
      ),
      actions: const [
        CartCounterIcon(),
      ],
    );
  }
}

