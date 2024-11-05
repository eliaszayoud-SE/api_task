import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';

import '../../../core/constatnt/app_colors.dart';
import '../../../core/constatnt/app_sizes.dart';
import '../../../core/constatnt/app_texts.dart';
import '../../../core/constatnt/image_path.dart';
import '../../widget/container/circular_container.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace.w),
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: TextFormField(
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintStyle: Theme.of(context).textTheme.labelSmall!.apply(color: AppColors.grey),
                  hintText: AppTexts.search,
                  contentPadding: EdgeInsets.symmetric(vertical: AppSizes.md.h),
                  prefixIcon: Container(
                    margin: EdgeInsets.only(left: AppSizes.lg.w, right: AppSizes.md.w),
                    child: Padding(
                      padding:  EdgeInsets.only(left: AppSizes.lg.w),
                      child: const Icon(Iconsax.search_normal, color: AppColors.grey,),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
                  )
              ),
            ),
          ),
          SizedBox(width: AppSizes.spaceBtwItems.w,),
          CircularContainer(
            size: 52,
            backgroundColor: AppColors.green,
            child: IconButton(onPressed: (){}, icon: SvgPicture.asset(ImagePath.sliderIcon),),
          )
        ],
      ),
    );
  }
}


