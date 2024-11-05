import 'package:api_task_6/core/constatnt/shared_pref_keys.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constatnt/data.dart';

class MyServices extends GetxService {
  late SharedPreferences sharedPreferences;
  Future<MyServices> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    await setToken();
    return this;
  }

  Future<void>saveStringValue(String key, String value) async{
    await sharedPreferences.setString(key, value);
  }

  Future<String?>getStringValue(String key) async{
    return sharedPreferences.getString(key);
  }

  Future<void>setToken() async{
    ConstData.token = await getStringValue(SharedPrefKeys.token);
  }
}

initialServices() async {
  await Get.putAsync(() => MyServices().init());
}
