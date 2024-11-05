import 'package:api_task_6/core/constatnt/shared_pref_keys.dart';
import 'package:api_task_6/core/services/my_services.dart';
import 'package:api_task_6/view/authentication/sign_up/screen/sign_up.dart';
import 'package:get/get.dart';

import '../../../core/class/crud.dart';
import '../../../core/class/status_request.dart';
import '../../../core/constatnt/app_link.dart';
import '../../../core/constatnt/data.dart';

class SideMenuController extends GetxController {
  StatusRequest response = StatusRequest.loading;
  Crud crud = Get.find();
  MyServices myServices =  Get.find();
  String responseMessage = '';
  bool isLoading = false;
  Future<void> signOut() async {
    isLoading = true;
    response = StatusRequest.loading;
    update();
    var result = await crud.postData(
      AppLink.logOut,
      body: {

      }, // You may pass additional body data if needed
      headers: {'Authorization': 'Bearer ${ConstData.token}',
        'Accept': 'application/json',},
      );
    result.fold((left) async {
      isLoading = false;
      response = left;
      update();
        Get.snackbar('Error', 'Failed to sign out');
    }, (right) async {
      await myServices.saveStringValue(SharedPrefKeys.token, '');
      await myServices.sharedPreferences.setBool(SharedPrefKeys.login, false);
      ConstData.token = '';
      // Navigate to Sign In screen
      Get.offAll(() => const SignUpScreen());
    });
  }
}
