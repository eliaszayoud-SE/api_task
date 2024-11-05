import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constatnt/app_colors.dart';
import '../../../core/constatnt/app_sizes.dart';
import '../../../core/constatnt/image_path.dart';
import '../../widget/container/rounded_container.dart';

class NewArrivalProduct extends StatelessWidget {
  const NewArrivalProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace.w),
      child: RoundedContainer(
        width: 335.w,
        height: 95.h,
        borderRadius: AppSizes.borderRadiusXLg.r,
        backgroundColor: AppColors.white,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: AppSizes.defaultSpace.h,
              left: AppSizes.defaultSpace.w,
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Summer Sale', style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Raleway',
                        fontSize: 12.sp
                    ),),
                    Text('15% OFF', style: TextStyle(
                        fontSize: 36.sp,
                        fontFamily: 'Futura',
                        fontWeight: FontWeight.w500,
                        color: AppColors.lightBlue
                    ),)
                  ],
                ),
              ),
            ),
            Positioned(left: 7.w, bottom: 18.h,child: SvgPicture.asset(ImagePath.star,),),
            Positioned(left: 130.w, top: 4.h,child: SvgPicture.asset(ImagePath.star),),
            Positioned(left: 160.w, bottom: 12.h,child: SvgPicture.asset(ImagePath.star),),
            Positioned(right: 9.5.w, top: 15.h,child: SvgPicture.asset(ImagePath.star),),
            Positioned(top: 12.h, left:178.w,child: SvgPicture.asset(ImagePath.newVector),),
            Positioned(
                right: 35.w,
                top: -7.h,
                child: Transform.rotate(angle: 0.35, child: Container(
                  width: 99.w,
                  height: 99.w,
                  color: AppColors.white,
                  child: Image.asset(ImagePath.product1),

                ),))
          ],
        ),
      ),
    );
  }
}