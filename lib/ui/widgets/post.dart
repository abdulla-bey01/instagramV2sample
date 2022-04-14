import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '/ui/theming/theme_controller.dart';
import '/ui/view-models/concrency/post_view_model.dart';
import 'image_with_loading.dart';
import 'post_actions.dart';
import 'post_gallery.dart';

class Post extends StatelessWidget {
  const Post({
    Key? key,
    required this.postViewModel,
  }) : super(key: key);
  final PostViewModel postViewModel;

  @override
  Widget build(BuildContext context) {
    final ThemeController _themeController = Get.find();
    return Obx(() {
      final _theme = _themeController.theme;
      return Expanded(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: ImageWithLoadingWidget(
                          url: postViewModel.post.author.avatarUrl,
                          width: 30.h,
                          height: 30.h,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Text(
                        postViewModel.post.author.username,
                        style: _theme.px13c0_0_0_1w700,
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      debugPrint('clicked on post more button');
                    },
                    icon: const Icon(Icons.more_horiz),
                  ),
                ],
              ),
            ),
            Container(
              constraints: const BoxConstraints(maxHeight: 500),
              width: MediaQuery.of(context).size.width,
              child: PostGallery(
                postViewModel: postViewModel,
              ),
            ),
            PostActions(
              postViewModel: postViewModel,
            ),
            postViewModel.post.whoLiked != null &&
                    postViewModel.post.whoLiked!.isNotEmpty
                ? Padding(
                    padding: EdgeInsets.only(left: 16.w, top: 8.0),
                    child: Text(
                      postViewModel.post.whoLiked!.length.toString() + ' likes',
                      style: _theme.px13c0_0_0_1w700,
                    ),
                  )
                : const SizedBox()
          ],
        ),
      );
    });
  }
}
