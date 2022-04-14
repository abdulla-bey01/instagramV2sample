import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '/ui/utils/consts/ui_constraints.dart';
import '/ui/view-models/concrency/main_screen_view_model.dart';
import 'non_animated_inkwell.dart';

class MainScreenAppBar extends StatelessWidget {
  const MainScreenAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MainScreenViewModel _mainScreenViewModel = Get.find();
    return Padding(
      padding: EdgeInsets.all(12.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            UiConstraints.instance.logoPath,
            width: 104,
            height: 30,
          ),
          Row(
            children: _mainScreenViewModel.topMenuItems.map((item) {
              return Padding(
                padding: EdgeInsets.only(left: 16.w),
                child: NonAnimatedInkWell(
                  onTap: () => item.onClick(),
                  child: SvgPicture.asset(
                    item.iconPath,
                  ),
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
