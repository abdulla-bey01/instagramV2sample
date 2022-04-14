import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '/ui/theming/theme_controller.dart';

class CenteredCircularProgressBar extends StatelessWidget {
  const CenteredCircularProgressBar({Key? key, this.color}) : super(key: key);
  final Color? color;
  @override
  Widget build(BuildContext context) {
    final ThemeController _themeController = Get.find();
    return Obx(() {
      final _theme = _themeController.theme;
      return Center(
        child: SizedBox(
          height: 10.0.h,
          width: 10.0.h,
          child: CircularProgressIndicator(
            valueColor:
                AlwaysStoppedAnimation<Color>(color ?? _theme.secondaryColor),
            strokeWidth: 2,
          ),
        ),
      );
    });
  }
}
