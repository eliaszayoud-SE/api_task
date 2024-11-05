import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelperFunctions {
  static double getBottomNavigationBarHeight() {
    return kBottomNavigationBarHeight;
  }

  static double getAppBarHeight() {
    return kToolbarHeight;
  }

  static Size screenSize(){
    return MediaQuery.of(Get.context!).size;
  }

  static double screenHeight(){
    return MediaQuery.of(Get.context!).size.height;
  }

  static double screenWidth(){
    return MediaQuery.of(Get.context!).size.width;
  }



  static validInput(String value,  String? type){

    if(type == 'username'){
      if(!GetUtils.isUsername(value)){
        return 'not valid username';
      }
    }

    if(type == 'email'){
      if(!GetUtils.isEmail(value)){
        return 'not valid email';
      }
    }

    if(value.isEmpty){
      return "this filed can't be empty";
    }
  }

  static checkInternet() async {
    try {
      var result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      }
    } on SocketException catch (_) {
      return false;
    }
  }

}