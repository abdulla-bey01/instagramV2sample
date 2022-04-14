import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '/ui/view-models/concrency/main_screen_view_model.dart';
import 'story_item.dart';

class StoryList extends StatelessWidget {
  const StoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MainScreenViewModel _mainScreenViewModel = Get.find();
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 105.h,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: StoryItem(story: _mainScreenViewModel.currentUserStory),
            ),
            ..._mainScreenViewModel.stories.map((story) {
              return Padding(
                padding: EdgeInsets.only(left: 12.w),
                child: StoryItem(story: story),
              );
            }).toList()
          ],
        ),
      ),
    );
  }
}
