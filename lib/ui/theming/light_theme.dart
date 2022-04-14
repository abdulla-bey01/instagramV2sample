import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'theme_model.dart';

ThemeModel lightTheme = ThemeModel(
  mainColor: const Color.fromRGBO(255, 255, 255, 1),
  accentColor: const Color.fromRGBO(0, 0, 0, 1),
  secondaryColor: const Color.fromARGB(255, 236, 12, 83),
  //
  px11_5c0_0_0_1w400: TextStyle(
    fontFamily: 'SF-UI-Display-Regular',
    fontSize: 11.5.sp,
    fontWeight: FontWeight.w400,
  ),
  px13c0_0_0_1w700: TextStyle(
    fontFamily: 'SF-UI-Display-Regular',
    fontSize: 13.sp,
    fontWeight: FontWeight.w700,
  ),
);
