import 'package:api_task_6/core/constatnt/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constatnt/app_colors.dart';

Widget buildRecentItem(BuildContext context, String title, String subtitle, String time, String imagePath, {bool isOffer = false}) {
  return Container(
    padding: const EdgeInsets.all(15.0),
    decoration: BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(15.0.r),
      boxShadow: [
        BoxShadow(
          color: AppColors.lightGray.withOpacity(0.1),
          spreadRadius: 2,
          blurRadius: 5,
          offset: const Offset(0, 3),
        ),
      ],
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15.0.r),
          child: Image.asset(
            imagePath,
            width: 67.w,
            height: 67.h,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w500,
                    fontSize: AppSizes.fontSizeXs.sp,
                    color: AppColors.darkBlue
                ),
              ),
              SizedBox(height: 7.h),
              if (isOffer) // If there is an offer, show two differently colored prices
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: subtitle.split("   ")[0], // Original price
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: AppSizes.fontSizeXs.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.darkBlue,// Strike-through for original price
                        ),
                      ),
                      const TextSpan(
                        text: "     ", // Add spacing between prices
                      ),
                      TextSpan(
                        text: subtitle.split("   ")[1], // Discounted price
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: AppSizes.fontSizeXs.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.darkBlue,
                        ),
                      ),
                    ],
                  ),
                )
              else
                Text(
                  subtitle,
                  style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: AppSizes.fontSizeXs.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.lightGray,
                  ),
                ),
            ],
          ),
        ),
        SizedBox(width: 10.w),
        Text(
          time,
          style: TextStyle(
              fontFamily: 'poppins',
              fontWeight: FontWeight.w500,
              fontSize: AppSizes.fontSizeXs.sp,
              color: AppColors.lightGray
          ),
        ),
      ],
    ),
  );
}
//
//
// import 'package:flutter/material.dart';
// import 'package:flutter_api/core/const_data/app_colors.dart';
// import 'package:flutter_api/core/const_data/my_size.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// Widget buildRecentItem(
//     BuildContext context,
//     String title,
//     String subtitle,
//     String time,
//     String imagePath,
//     {bool isOffer = false}
//     ) {
//   return ListTile(
//     leading: Container(
//       height: 85.h,
//       width: 85.w,
//       child: Image.asset(
//         imagePath,
//         height: 67.h,
//         width: 67.w,
//         fit: BoxFit.cover,
//       ),
//     ),
//     title: Text(
//       title,
//       maxLines: 2,
//       overflow: TextOverflow.ellipsis,
//       style: TextStyle(
//         fontSize: MySize.fontSizeXs.sp,
//         fontWeight: FontWeight.w500,
//         fontFamily: 'Raleway1',
//       ),
//     ),
//     subtitle: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         if (isOffer) // If there is an offer, show two differently colored prices
//           Text.rich(
//             TextSpan(
//               children: [
//                 TextSpan(
//                   text: subtitle.split("   ")[0], // Original price
//                   style: TextStyle(
//                     fontFamily: 'poppins',
//                     fontSize: MySize.fontSizeXs.sp,
//                     fontWeight: FontWeight.w500,
//                     color: AppColors.blackColor,// Strike-through for original price
//                   ),
//                 ),
//                 TextSpan(
//                   text: "   ", // Add spacing between prices
//                 ),
//                 TextSpan(
//                   text: subtitle.split("   ")[1], // Discounted price
//                   style: TextStyle(
//                     fontFamily: 'poppins',
//                     fontSize: MySize.fontSizeXs.sp,
//                     fontWeight: FontWeight.w500,
//                     color: AppColors.gryTextColor,
//                   ),
//                 ),
//               ],
//             ),
//           )
//         else
//           Text(
//             subtitle,
//             style: TextStyle(
//               fontFamily: 'poppins',
//               fontSize: MySize.fontSizeXs.sp,
//               fontWeight: FontWeight.w500,
//               color: AppColors.gryTextColor,
//             ),
//           ),
//         Text(
//           time,
//           style: TextStyle(
//             fontFamily: 'poppins',
//             fontSize: MySize.fontSizeXs.sp,
//             fontWeight: FontWeight.w500,
//             color: AppColors.gryTextColor,
//           ),
//         ),
//       ],
//     ),
//   );
// }
