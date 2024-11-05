
import 'data.dart';

class AppLink{


  //remote address

  static String serverRoot = 'http://task.focal-x.com';
  static String appApi = '$serverRoot/api';
  static String register = '$appApi/register';
  static String logIn = '$appApi/login';
  static String logOut = '$appApi/logout';
  static String categories = '$appApi/categories';
  static String subCategories = '$appApi/subCategories';
  static String product = '$appApi/products';
  static String order = '$appApi/order';
  static String getOrder = '$order/getOrder';
  static String createOrder = '$order/createOrder';
  static String updateOrder = '$order/updateOrder';
  static String deleteOrder = '$order/deleteOrder';



  static Map<String, String> getHeader(){
    Map<String, String> mainHeader={
      'Content-Type' : 'application/json',
      'Accept' : 'application/json',
      'X-Requested-With' : 'XMLHttpRequest'
    };
    return mainHeader;
  }
    static Map<String,String> getHeaderToken(){
    Map<String, String> mainHeader={
      'Content-Type' : 'application/json',
      'Accept' : 'application/json',
      'X-Requested-With' : 'XMLHttpRequest',
      'Authorization' : 'Bearer ${ConstData.token}'
    };
    return mainHeader;
  }
}