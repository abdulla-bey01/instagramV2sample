import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '/data/models/story_model.dart';
import '/ui/theming/theme_controller.dart';
import 'image_with_loading.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({
    Key? key,
    required this.story,
  }) : super(key: key);

  final StoryModel story;

  @override
  Widget build(BuildContext context) {
    final ThemeController _themeController = Get.find();
    return Obx(
      () {
        final _theme = _themeController.theme;
        return Column(
          children: [
            Container(
              width: 70.h,
              height: 70.h,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromRGBO(222, 0, 70, 1),
                    Color.fromRGBO(247, 163, 75, 1),
                  ],
                ),
              ),
              child: Container(
                width: 66.h,
                height: 66.h,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: ImageWithLoadingWidget(
                      url: story.author.avatarUrl,
                      width: 66.h,
                      height: 66.h,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 4.0),
            Text(
              story.author.username,
              style: _theme.px11_5c0_0_0_1w400,
            )
          ],
        );
      },
    );
  }
}
