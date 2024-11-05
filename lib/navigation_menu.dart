import 'package:api_task_6/view/favourite/screen/favourite.dart';
import 'package:api_task_6/view/home/screen/home.dart';
import 'package:api_task_6/view/notification/screen/notification_screen.dart';
import 'package:api_task_6/view/profile/screen/profile_screen.dart';
import 'package:api_task_6/view/side_menu/screen/side_menu.dart';
import 'package:api_task_6/view/widget/navigation_menu/custom_buttom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    NavigationMenuController controller = Get.put(NavigationMenuController());

    return Scaffold(
      drawer:const SideMenuScreen(),
      bottomNavigationBar:const CustomBottomNavigationBar(),
      body: Obx(() => controller.screen[controller.selectedIndex.value]),
    );
  }
}

class NavigationMenuController extends GetxController {
  static NavigationMenuController instance =
      Get.find<NavigationMenuController>();
  RxInt selectedIndex = 0.obs;

  List<IconData> icon = [
    Iconsax.home,
    Iconsax.heart,
    Iconsax.notification,
    Iconsax.user
  ];

  List<Widget> screen = [
    const HomeScreen(),
    const FavouriteScreen(),
    const NotificationScreen(),
    const ProfileScreen(),

  ];
}
