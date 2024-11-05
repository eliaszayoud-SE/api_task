import 'package:api_task_6/view/widget/navigation_menu/bottom_navigation_bar_shape.dart';
import 'package:flutter/material.dart';

import '../product/cart/custom_cart_floating_action_button.dart';
import 'bottom_navigation_bar_item.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        /// Bottom NavigationBar Shape
        BottomNavigationBarShape(),

        /// Bottom NavigationBar Item
        CustomBottomNavigationBarItem(),

        CustomCartFloatingActionButton(),
      ],
    );
  }
}
