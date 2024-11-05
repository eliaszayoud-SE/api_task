import 'package:api_task_6/core/class/status_request.dart';
import 'package:api_task_6/core/constatnt/app_route.dart';
import 'package:api_task_6/core/constatnt/shared_pref_keys.dart';
import 'package:api_task_6/core/services/my_services.dart';
import 'package:api_task_6/model/sign_up_model.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/class/crud.dart';
import '../../../../core/constatnt/app_link.dart';

class SignUpController extends GetxController {
  static SignUpController instance = Get.find<SignUpController>();

  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  bool isObscureText = true;
  StatusRequest? statusRequest;
  Crud crud = Get.find();
  GlobalKey<FormState> formKey = GlobalKey();
  SignUpModel? signUpModel;
  MyServices myServices = Get.find();

  void signUp() async {
    if (!formKey.currentState!.validate()) {
      return;
    }
    String? fcmToken = await FirebaseMessaging.instance.getToken();
    statusRequest = StatusRequest.loading;
    update();
    var response = await crud.postData(AppLink.register, headers: {
      'Accept': 'application/json',
    }, body: {
      'name': nameController.text,
      'email': emailController.text,
      'password': passwordController.text,
      'fcm_token': fcmToken,
    });
    response.fold((l) {
      statusRequest = StatusRequest.serverFailure;
      Get.snackbar('Error', 'An error please try again letter');
      update();
    }, (r) {
      if (r.isNotEmpty) {
        signUpModel = SignUpModel.fromMap(r);
        Get.snackbar('Success', signUpModel!.message!);
        myServices.saveStringValue(
            SharedPrefKeys.email, signUpModel!.data!.user!.email!);
        myServices.saveStringValue(
            SharedPrefKeys.name, signUpModel!.data!.user!.name!);
        myServices.saveStringValue(
            SharedPrefKeys.token, signUpModel!.data!.accessToken!);
        myServices.setToken();
        myServices.sharedPreferences.setBool(SharedPrefKeys.login,true);
        Get.toNamed(AppRoute.navigationMenu);
      }
    });
  }

  void togglePasswordVisibility(){
    isObscureText = !isObscureText;
    update();
  }

  @override
  void onInit() {
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }
}
