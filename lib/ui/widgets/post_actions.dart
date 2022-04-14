import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '/ui/theming/theme_controller.dart';
import '/ui/utils/consts/ui_constraints.dart';
import '/ui/view-models/concrency/post_view_model.dart';
import 'non_animated_inkwell.dart';

class PostActions extends StatelessWidget {
  const PostActions({
    Key? key,
    required this.postViewModel,
  }) : super(key: key);

  final PostViewModel postViewModel;

  @override
  Widget build(BuildContext context) {
    final ThemeController _themeController = Get.find();
    return Obx(() {
      final _theme = _themeController.theme;
      return Padding(
        padding: EdgeInsets.only(left: 16.w, top: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                NonAnimatedInkWell(
                  onTap: () => postViewModel.toggleLike(),
                  child: SvgPicture.asset(
                    UiConstraints.instance.heartPath,
                    color: postViewModel.post.isLiked
                        ? Colors.red
                        : _theme.accentColor,
                  ),
                ),
                const SizedBox(width: 16),
                NonAnimatedInkWell(
                  onTap: () {
                    debugPrint('clicked on comment');
                  },
                  child: SvgPicture.asset(
                    UiConstraints.instance.commentPath,
                  ),
                ),
                const SizedBox(width: 16),
                NonAnimatedInkWell(
                  onTap: () {
                    debugPrint('clicked on share');
                  },
                  child: SvgPicture.asset(
                    UiConstraints.instance.sharePath,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                NonAnimatedInkWell(
                  onTap: () {
                    debugPrint('clicked on save');
                  },
                  child: SvgPicture.asset(
                    UiConstraints.instance.bookmarkPath,
                  ),
                ),
                const SizedBox(width: 16),
              ],
            ),
          ],
        ),
      );
    });
  }
}
