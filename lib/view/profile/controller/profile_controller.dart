import 'dart:io';
import 'package:api_task_6/core/services/my_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileController extends GetxController{
  TextEditingController nameController =TextEditingController();
  TextEditingController emailController =TextEditingController();
  TextEditingController passwordController =TextEditingController();
  File? _selectedImage;
  File? get selectedImage => _selectedImage;
  MyServices myServices = Get.find();

  Future<void> pickImageFromGallery() async {
    try {
      final returnedImage = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (returnedImage != null) {
        _selectedImage = File(returnedImage.path);
        update(); // Update the state after image selection
      }
    } catch (e) {
      Get.snackbar('Error', 'Failed to pick image: $e');
    }
  }

  Future<void> loadUserData()async{
    String? name = await myServices.getStringValue('name');
    String? email = await myServices.getStringValue('email');

    nameController.text = name ?? '';
    emailController.text = email ?? '';
  }
  //
  // Future<void> loadUserData() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   nameController.text = prefs.getString('name') ?? '';
  //   emailController.text = prefs.getString('email') ?? '';
  //   passwordController.text = prefs.getString('password') ?? '';
  // }
  //
  // Future<void> saveUserData() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   await prefs.setString('name', nameController.text);
  //   await prefs.setString('email', emailController.text);
  //   await prefs.setString('password', passwordController.text);
  //   Get.snackbar("Success", "Data saved successfully!");
  // }
  //
  //
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loadUserData();
  }

  bool isPassword = true;
  void togglePasswordVisibility(){
    isPassword = !isPassword;
    update();
  }
}

