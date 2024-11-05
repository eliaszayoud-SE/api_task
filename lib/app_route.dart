import 'package:api_task_6/core/constatnt/app_route.dart';
import 'package:api_task_6/middleware/my_middleware.dart';
import 'package:api_task_6/navigation_menu.dart';
import 'package:api_task_6/view/authentication/sign_up/screen/sign_up.dart';
import 'package:api_task_6/view/cart/screen/cart.dart';
import 'package:api_task_6/view/favourite/screen/favourite.dart';
import 'package:api_task_6/view/notification/screen/notification_screen.dart';
import 'package:api_task_6/view/profile/screen/profile_screen.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? getPages = [
  // GetPage(name: AppRoute.home, page:()=>const HomeScreen()),
  GetPage(name: AppRoute.cart, page: ()=>const CartScreen()),
  GetPage(name: AppRoute.signUp, page: ()=> const SignUpScreen(), middlewares: [MyMiddleware()]),
  GetPage(name: AppRoute.navigationMenu, page: ()=>const NavigationMenu()),
  GetPage(name: AppRoute.profile, page: ()=>const ProfileScreen()),
  GetPage(name: AppRoute.notification, page: ()=>const NotificationScreen()),
  GetPage(name: AppRoute.favourite, page: ()=>const FavouriteScreen()),
];