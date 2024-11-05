import 'package:api_task_6/core/constatnt/app_sizes.dart';
import 'package:api_task_6/core/constatnt/image_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../core/constatnt/app_colors.dart';
import '../controller/profile_controller.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: SvgPicture.asset('assets/vectors/back_arrow.svg')),
        centerTitle: true,
        title: const Text(
          'Profile',
          textAlign: TextAlign.center,
        ),
      ),
      body: SafeArea(
          child: GetBuilder<ProfileController>(
              init: ProfileController(),
              builder: (controller) {
                return Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      SizedBox(height: 40.h),
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.r)),
                            child: Image.asset(
                              ImagePath.programmer,
                              width: 81.w,
                              height: 81.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            bottom: 2.5.h,
                            right: 2.5.w,
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 19.h,
                                width: 19.w,
                                decoration: BoxDecoration(
                                  border: Border.all(color: AppColors.white),
                                  color: AppColors.green,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30.r),
                                  ),
                                ),
                                padding: const EdgeInsets.all(4),
                                child: InkWell(
                                  onTap: () {
                                    controller.pickImageFromGallery();
                                  },
                                  child: SvgPicture.asset(
                                    'assets/icons/pin.svg',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Your Name ',
                              style: TextStyle(
                                  fontFamily: 'Raleway',
                                  fontSize: AppSizes.fontSizeSm),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            TextFormField(
                              controller: controller.nameController,
                              decoration: const InputDecoration(
                                hintText: 'xxxxxxx',
                              ),
                            ),
                            SizedBox(height: 20.h),
                            const Text(
                              'Email Address',
                              style: TextStyle(
                                  fontFamily: 'Raleway',
                                  fontSize: AppSizes.fontSizeSm),
                            ), // Email TextField
                            TextFormField(
                              controller: controller.emailController,
                              keyboardType: TextInputType.emailAddress,
                              decoration: const InputDecoration(
                                hintText: 'xyz@gmail.com',
                              ),
                            ),
                            SizedBox(height: 20.h),
                            const Text(
                              'Password',
                              style: TextStyle(
                                fontFamily: 'Raleway',
                              ),
                            ),
                            // Password TextFormField
                            TextFormField(
                              controller: controller.passwordController,
                              obscureText: controller.isPassword,
                              decoration: InputDecoration(
                                hintText: '*******',
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    controller.togglePasswordVisibility();
                                  },
                                  child: Icon(
                                      size: 16,
                                      color: AppColors.grey,
                                      controller.isPassword
                                          ? Iconsax.eye_slash
                                          : Iconsax.eye),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.h),
                      const Text(
                        'Recovery Password',
                        textAlign: TextAlign.right,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      SizedBox(width: double.infinity,child: ElevatedButton(onPressed: () {}, child: const Text('Save Now'))),
                    ],
                  ),
                );
              })),
    );
  }
}
