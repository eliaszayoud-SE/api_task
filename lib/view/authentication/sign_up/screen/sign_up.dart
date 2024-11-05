import 'package:api_task_6/core/class/helper_functions.dart';
import 'package:api_task_6/core/class/status_request.dart';
import 'package:api_task_6/core/constatnt/app_colors.dart';
import 'package:api_task_6/core/constatnt/app_sizes.dart';
import 'package:api_task_6/core/constatnt/image_path.dart';
import 'package:api_task_6/view/authentication/sign_up/controller/sign_up_controller.dart';
import 'package:api_task_6/view/widget/app_bar/custom_app_bar.dart';
import 'package:api_task_6/view/widget/container/circular_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpController());
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomAppBar(
        leadingIcon: CircularContainer(
          backgroundColor: AppColors.light,
          size:40,
          child: IconButton(
            iconSize: 20.sp,
            color: AppColors.grey,
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back_ios_outlined,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left:  AppSizes.defaultSpace.w, right:AppSizes.defaultSpace.w ),
          child:  GetBuilder<SignUpController>(
            builder: (controller){
              return controller.statusRequest == StatusRequest.loading ? const Center(child:CircularProgressIndicator()) : Form(
                key: controller.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Register Account', style: Theme.of(context).textTheme.labelLarge),
                    SizedBox(height: (AppSizes.spaceBtwItems / 2).h,),
                    Text('Fill your details or continue with \n social media', style: Theme.of(context).textTheme.labelMedium!.apply(fontFamily: 'Poppines', color: AppColors.lightGray), textAlign: TextAlign.center,),
                    SizedBox(height: AppSizes.spaceBtwSections.h,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Your name', style: Theme.of(context).textTheme.labelMedium!.apply(color: AppColors.darkBlue),),
                        SizedBox(height: AppSizes.spaceBtwItems.h,),
                        TextFormField(
                          controller: controller.nameController,
                          validator: (input){
                            return HelperFunctions.validInput(input!, 'username');
                          },
                          decoration: const InputDecoration(
                              hintText: 'xxxxxxx'
                          ),
                        ),
                        SizedBox(height: AppSizes.spaceBtwItems.h,),

                        Text('email', style: Theme.of(context).textTheme.labelMedium!.apply(color: AppColors.darkBlue),),
                        SizedBox(height: AppSizes.spaceBtwItems.h,),
                        TextFormField(
                          controller: controller.emailController,

                          validator: (input){
                              return HelperFunctions.validInput(input!, 'email');
                            },
                          decoration: const InputDecoration(
                              hintText: 'xyz@gmail.com'
                          ),
                        ),
                        SizedBox(height: AppSizes.defaultSpace.h,),

                        Text('password', style: Theme.of(context).textTheme.labelMedium!.apply(color: AppColors.darkBlue),),
                        SizedBox(height: AppSizes.spaceBtwItems.h,),
                        TextFormField(
                          controller: controller.passwordController,
                          validator: (input){
                              return HelperFunctions.validInput(input!, '');
                            },
                          obscureText: controller.isObscureText,
                          decoration: InputDecoration(
                              hintText: '***********',
                              suffixIcon: IconButton(onPressed: (){
                                controller.togglePasswordVisibility();
                              },icon: controller.isObscureText ? const Icon(Iconsax.eye_slash) : const Icon(Iconsax.eye),)
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: (AppSizes.xl * 2).h,),
                    SizedBox(width: double.infinity, height: 50.h, child: ElevatedButton(onPressed: (){
                      controller.signUp();
                    }, child: const Text('Sign Up'),),),
                    SizedBox(height: AppSizes.spaceBtwItems.h,),

                    SizedBox(width: double.infinity, height: 50.h, child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.light
                      ),
                      onPressed: (){}, child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(ImagePath.google),
                        Text(' Sign Up With Google', style: Theme.of(context).textTheme.labelMedium!.copyWith(fontSize: 14.sp),)
                      ],),),),
                    SizedBox(height: 55.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already Have Account? ', style: Theme.of(context).textTheme.labelMedium!.apply(color: AppColors.grey)),
                        InkWell(
                          onTap: (){},
                          child: Text('Log In', style: Theme.of(context).textTheme.labelMedium!.apply(color: const Color(0xff1A1D1E))),
                        )
                      ],
                    )
                  ],
                ),
              );
            },
          )
        ),
      )
    );
  }
}
