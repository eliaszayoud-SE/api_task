import 'package:api_task_6/core/constatnt/shared_pref_keys.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../core/constatnt/app_route.dart';
import '../core/services/my_services.dart';

class MyMiddleware extends GetMiddleware{

  MyServices myServices = Get.find();

  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {

    if(myServices.sharedPreferences.getBool(SharedPrefKeys.login) == true){
      return  RouteSettings(name:AppRoute.navigationMenu);
    }
  }

}