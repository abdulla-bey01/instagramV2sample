import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '/ui/theming/theme_controller.dart';
import '/ui/view-models/concrency/main_screen_view_model.dart';
import '/ui/view-models/concrency/post_view_model.dart';
import '/ui/widgets/main_screen_app_bar.dart';
import '/ui/widgets/post.dart';
import '/ui/widgets/story_list.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);
  static const route = '/main-screen';

  @override
  Widget build(BuildContext context) {
    final _mainScreenViewModel = Get.put(MainScreenViewModel());
    final _themeController = Get.put(ThemeController());
    return Obx(
      () {
        final _theme = _themeController.theme;
        return Scaffold(
          backgroundColor: _theme.mainColor,
          body: SafeArea(
            child: Column(
              children: [
                const MainScreenAppBar(),
                SizedBox(height: 8.h),
                const StoryList(),
                Divider(
                  height: 1.h,
                  thickness: 1.h,
                ),
                SizedBox(height: 16.h),
                ..._mainScreenViewModel.posts.map((post) {
                  return Post(postViewModel: PostViewModel(post: post));
                }).toList(),
              ],
            ),
          ),
        );
      },
    );
  }
}
