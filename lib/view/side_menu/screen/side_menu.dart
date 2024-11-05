import 'package:api_task_6/core/constatnt/app_route.dart';
import 'package:api_task_6/core/constatnt/app_sizes.dart';
import 'package:api_task_6/core/constatnt/image_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/constatnt/app_colors.dart';
import '../controller/side_menu_controller.dart';

class SideMenuScreen extends StatelessWidget {
  const SideMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.dark,
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(30),
            child: GetBuilder<SideMenuController>(
                init: SideMenuController(),
                builder: (controller) {
                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(96)),
                        child: Image.asset(ImagePath.programmer,
                          width: 96.w,
                          height: 96.h,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 30.h,),
                      const Text('Programmer X',
                        style: TextStyle(
                            color: AppColors.white,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w500,
                            fontSize: AppSizes.fontSizeMd
                        ),),
                      SizedBox(height: 50.h,),
                      ListTile(
                          leading: SvgPicture.asset('assets/vectors/profile.svg'),
                          title: const Text('Profile', style: TextStyle(color: AppColors.white, fontFamily: 'Raleway',fontSize: AppSizes.fontSizeMd, fontWeight: FontWeight.w500),),
                          trailing: IconButton(onPressed: (){
                            Get.toNamed(AppRoute.profile);
                          }, icon: SvgPicture.asset('assets/vectors/forward_arrow.svg'))),
                      ListTile(
                          leading: SvgPicture.asset('assets/vectors/shopping_bag.svg'),
                          title: const Text('My Cart', style: TextStyle(color: AppColors.white, fontFamily: 'Raleway',fontSize: AppSizes.fontSizeMd, fontWeight: FontWeight.w500),),
                          trailing: IconButton(onPressed: (){Get.toNamed(AppRoute.cart);}, icon: SvgPicture.asset('assets/vectors/forward_arrow.svg'))),
                      ListTile(
                          leading: SvgPicture.asset('assets/vectors/favorite.svg'),
                          title: const Text('Favorite', style: TextStyle(color: AppColors.white, fontFamily: 'Raleway',fontSize: AppSizes.fontSizeMd, fontWeight: FontWeight.w500),),
                          trailing: IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/vectors/forward_arrow.svg'))),
                      ListTile(
                          leading: SvgPicture.asset('assets/vectors/orders.svg'),
                          title: const Text('Orders', style: TextStyle(color: AppColors.white, fontFamily: 'Raleway',fontSize: AppSizes.fontSizeMd, fontWeight: FontWeight.w500),),
                          trailing: IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/vectors/forward_arrow.svg'))),
                      ListTile(
                          leading: SvgPicture.asset('assets/vectors/bell.svg'),
                          title: const Text('Notifications', style: TextStyle(color: AppColors.white, fontFamily: 'Raleway',fontSize: AppSizes.fontSizeMd, fontWeight: FontWeight.w500),),
                          trailing: IconButton(onPressed: (){
                            Get.toNamed(AppRoute.notification);
                          }, icon: SvgPicture.asset('assets/vectors/forward_arrow.svg'))),
                      ListTile(
                          leading: SvgPicture.asset('assets/vectors/setting.svg'),
                          title: const Text('Settings', style: TextStyle(color: AppColors.white, fontFamily: 'Raleway',fontSize: AppSizes.fontSizeMd, fontWeight: FontWeight.w500),),
                          trailing: IconButton(onPressed: (){}, icon: SvgPicture.asset('assets/vectors/forward_arrow.svg'))),
                      Divider(
                        thickness: 2,
                        height: 50.h,
                      ),
                      ListTile(
                          leading: SvgPicture.asset('assets/vectors/signout.svg'),
                          title: const Text('Sign Out', style: TextStyle(color: AppColors.white, fontFamily: 'Raleway',fontSize: AppSizes.fontSizeMd, fontWeight: FontWeight.w500),),
                          trailing: IconButton(onPressed: (){
                            controller.signOut();
                          }, icon: SvgPicture.asset('assets/vectors/forward_arrow.svg'))),

                    ],
                  );
                }
            ),
          ),
        ));
  }
}
