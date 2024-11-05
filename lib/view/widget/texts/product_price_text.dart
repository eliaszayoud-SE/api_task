import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ProductPriceText extends StatelessWidget {
  const ProductPriceText({
    super.key,
    required this.price,
    this.currencySign = '\$',
    this.maxLines = 1,
    this.lineThrow = false,
    this.isCart = false, required this.color,
  });

  final String price, currencySign;
  final int maxLines;
  final bool lineThrow;
  final bool isCart;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text('$currencySign $price',
          maxLines: maxLines,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.labelMedium!.copyWith(
              fontSize: 16.sp,
              fontFamily:  'Poppines',
              color: color,
              fontWeight: isCart ? FontWeight.w500 : null));
  }
}
