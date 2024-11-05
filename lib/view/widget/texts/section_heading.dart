import 'package:flutter/material.dart';

import '../../../core/constatnt/app_colors.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    required this.title,
    this.buttonText = 'View All',
    this.showButton = true,
    this.color,
    this.onPressed,
    this.padding =  EdgeInsets.zero,
  });

  final String title, buttonText;
  final bool showButton;
  final Color? color;
  final EdgeInsetsGeometry padding;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              title,
              style:
              Theme.of(context).textTheme.labelMedium,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          if (showButton)
            TextButton(onPressed: onPressed, child: Text(buttonText, style: Theme.of(context).textTheme.labelSmall!.apply(color: AppColors.green),))
        ],
      ),
    );
  }
}
