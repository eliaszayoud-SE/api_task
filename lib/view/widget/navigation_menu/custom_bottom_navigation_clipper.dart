import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomNavigationClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 0);
    path.quadraticBezierTo(66.79.w, 21.7.h, 121.66.w, 20.5.h);
    path.quadraticBezierTo(146.19.w, 20.5.h, 144.69.w, 44.5.h);
    path.quadraticBezierTo(155.71.w, 73.h, 207.78.w, 66.5.h);
    path.quadraticBezierTo(234.39.w, 63.18.h, 229.81.w, 31.5.h);
    path.quadraticBezierTo(233.81.w, 20.h, 255.34.w, 20.h);
    path.quadraticBezierTo(308.21.w, 21.7.h, size.width.w, 0.h);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}