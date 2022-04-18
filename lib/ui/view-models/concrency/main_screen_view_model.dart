import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import '/app/helpers/models/iconed_menu_item.dart';
import '/data/models/post_model.dart';
import '/data/models/story_model.dart';
import '/data/models/user_model.dart';
import '/ui/view-models/abstraction/initializable.dart';

class MainScreenViewModel extends RxController implements Initializable {
  late Rx<String> _title;
  String get title => _title.value;

  late final List<IconedMenuItem> _topMenuItems;
  List<IconedMenuItem> get topMenuItems => _topMenuItems;

  late final RxList<StoryModel> _stories;
  List<StoryModel> get stories => _stories;

  late final Rx<StoryModel> _currentUserStory;
  StoryModel get currentUserStory => _currentUserStory.value;

  late final RxList<PostModel> _posts;
  List<PostModel> get posts => _posts;

  void updateStory() {
    _stories.refresh();
  }

  @override
  void initialize() {
    _title = 'Instagram'.obs;
    _topMenuItems = [
      IconedMenuItem(
        id: 1,
        iconPath: 'assets/vectors/add.svg',
        onClick: () {
          debugPrint("clicked on add");
        },
      ),
      IconedMenuItem(
        id: 2,
        iconPath: 'assets/vectors/heart.svg',
        onClick: () {
          debugPrint("clicked on heart");
        },
      ),
      IconedMenuItem(
        id: 3,
        iconPath: 'assets/vectors/messenger.svg',
        onClick: () {
          debugPrint("clicked on messenger");
        },
      ),
    ];

    _currentUserStory = StoryModel(
      id: 1,
      author: UserModel(
        id: 1,
        username: 'Your story',
        avatarUrl:
            'https://instagram.fgyd4-2.fna.fbcdn.net/v/t51.2885-15/228640666_224555699564584_3086103443573315044_n.jpg?stp=dst-jpg_e35_p1080x1080&_nc_ht=instagram.fgyd4-2.fna.fbcdn.net&_nc_cat=104&_nc_ohc=YvGWh8Bd558AX_IKF_p&edm=ALQROFkBAAAA&ccb=7-4&ig_cache_key=MjYzMDA3NzczMzkyMTQyMjcxOQ%3D%3D.2-ccb7-4&oh=00_AT_6qvo0B4fjzZ_zjbGCCqEWLqLQQaPi62mWMAnIbElKvw&oe=625E7391&_nc_sid=30a2ef',
      ),
      imageUrls: [
        'https://instagram.fgyd4-2.fna.fbcdn.net/v/t51.2885-15/228640666_224555699564584_3086103443573315044_n.jpg?stp=dst-jpg_e35_p1080x1080&_nc_ht=instagram.fgyd4-2.fna.fbcdn.net&_nc_cat=104&_nc_ohc=YvGWh8Bd558AX_IKF_p&edm=ALQROFkBAAAA&ccb=7-4&ig_cache_key=MjYzMDA3NzczMzkyMTQyMjcxOQ%3D%3D.2-ccb7-4&oh=00_AT_6qvo0B4fjzZ_zjbGCCqEWLqLQQaPi62mWMAnIbElKvw&oe=625E7391&_nc_sid=30a2ef',
        'https://unsplash.com/photos/aXhfTlCDYiA/download?ixid=MnwxMjA3fDB8MXxhbGx8OHx8fHx8fDJ8fDE2NDk5MTk2NTg&force=true',
        'https://unsplash.com/photos/xsG6y8If6FA/download?ixid=MnwxMjA3fDB8MXxhbGx8MTR8fHx8fHwyfHwxNjQ5OTE5NjU4&force=true',
        'https://unsplash.com/photos/0VEDrQXxrQo/download?ixid=MnwxMjA3fDF8MXxhbGx8MjZ8fHx8fHwyfHwxNjQ5OTE2MDQ4&force=true',
      ],
    ).obs;

    _stories = <StoryModel>[
      StoryModel(
        id: 2,
        author: UserModel(
          id: 223,
          username: 'beauty_blog',
          avatarUrl:
              'https://instagram.fgyd4-3.fna.fbcdn.net/v/t51.2885-15/278003637_558925675421052_3931380095680049527_n.webp?stp=dst-jpg_e35&_nc_ht=instagram.fgyd4-3.fna.fbcdn.net&_nc_cat=100&_nc_ohc=CbfLxPOYR6UAX_IuSuH&edm=ALQROFkBAAAA&ccb=7-4&ig_cache_key=MjgxMjk0MDY1ODU2Njc4MzExMQ%3D%3D.2-ccb7-4&oh=00_AT-uysyk2toqqt6tLoZoscEI9BOgDE3uiFKmjkPBgcCglg&oe=625E4516&_nc_sid=30a2ef',
          hasStory: true,
        ),
        imageUrls: [
          'https://instagram.fgyd4-3.fna.fbcdn.net/v/t51.2885-15/278003637_558925675421052_3931380095680049527_n.webp?stp=dst-jpg_e35&_nc_ht=instagram.fgyd4-3.fna.fbcdn.net&_nc_cat=100&_nc_ohc=CbfLxPOYR6UAX_IuSuH&edm=ALQROFkBAAAA&ccb=7-4&ig_cache_key=MjgxMjk0MDY1ODU2Njc4MzExMQ%3D%3D.2-ccb7-4&oh=00_AT-uysyk2toqqt6tLoZoscEI9BOgDE3uiFKmjkPBgcCglg&oe=625E4516&_nc_sid=30a2ef',
          'https://unsplash.com/photos/aXhfTlCDYiA/download?ixid=MnwxMjA3fDB8MXxhbGx8OHx8fHx8fDJ8fDE2NDk5MTk2NTg&force=true',
          'https://unsplash.com/photos/xsG6y8If6FA/download?ixid=MnwxMjA3fDB8MXxhbGx8MTR8fHx8fHwyfHwxNjQ5OTE5NjU4&force=true',
          'https://unsplash.com/photos/0VEDrQXxrQo/download?ixid=MnwxMjA3fDF8MXxhbGx8MjZ8fHx8fHwyfHwxNjQ5OTE2MDQ4&force=true',
        ],
      ),
      StoryModel(
        id: 3,
        author: UserModel(
          id: 2433,
          username: 'mr.gates',
          avatarUrl:
              'https://unsplash.com/photos/xsG6y8If6FA/download?ixid=MnwxMjA3fDB8MXxhbGx8MTR8fHx8fHwyfHwxNjQ5OTE5NjU4&force=true',
          hasStory: true,
        ),
        imageUrls: [
          'https://unsplash.com/photos/xsG6y8If6FA/download?ixid=MnwxMjA3fDB8MXxhbGx8MTR8fHx8fHwyfHwxNjQ5OTE5NjU4&force=true',
          'https://unsplash.com/photos/aXhfTlCDYiA/download?ixid=MnwxMjA3fDB8MXxhbGx8OHx8fHx8fDJ8fDE2NDk5MTk2NTg&force=true',
          'https://unsplash.com/photos/0VEDrQXxrQo/download?ixid=MnwxMjA3fDF8MXxhbGx8MjZ8fHx8fHwyfHwxNjQ5OTE2MDQ4&force=true',
        ],
      ),
      StoryModel(
        id: 4,
        author: UserModel(
          id: 223,
          username: 'ronney',
          avatarUrl:
              'https://unsplash.com/photos/xsG6y8If6FA/download?ixid=MnwxMjA3fDB8MXxhbGx8MTR8fHx8fHwyfHwxNjQ5OTE5NjU4&force=true',
          hasStory: true,
        ),
        imageUrls: [
          'https://unsplash.com/photos/xsG6y8If6FA/download?ixid=MnwxMjA3fDB8MXxhbGx8MTR8fHx8fHwyfHwxNjQ5OTE5NjU4&force=true',
          'https://unsplash.com/photos/aXhfTlCDYiA/download?ixid=MnwxMjA3fDB8MXxhbGx8OHx8fHx8fDJ8fDE2NDk5MTk2NTg&force=true',
          'https://unsplash.com/photos/0VEDrQXxrQo/download?ixid=MnwxMjA3fDF8MXxhbGx8MjZ8fHx8fHwyfHwxNjQ5OTE2MDQ4&force=true',
        ],
      ),
      StoryModel(
        id: 6,
        author: UserModel(
          id: 243,
          username: 'cr7',
          avatarUrl:
              'https://unsplash.com/photos/xsG6y8If6FA/download?ixid=MnwxMjA3fDB8MXxhbGx8MTR8fHx8fHwyfHwxNjQ5OTE5NjU4&force=true',
          hasStory: true,
        ),
        imageUrls: [
          'https://unsplash.com/photos/xsG6y8If6FA/download?ixid=MnwxMjA3fDB8MXxhbGx8MTR8fHx8fHwyfHwxNjQ5OTE5NjU4&force=true',
          'https://unsplash.com/photos/aXhfTlCDYiA/download?ixid=MnwxMjA3fDB8MXxhbGx8OHx8fHx8fDJ8fDE2NDk5MTk2NTg&force=true',
          'https://unsplash.com/photos/0VEDrQXxrQo/download?ixid=MnwxMjA3fDF8MXxhbGx8MjZ8fHx8fHwyfHwxNjQ5OTE2MDQ4&force=true',
        ],
      ),
    ].obs;

    _posts = <PostModel>[
      PostModel(
        id: 1,
        author: UserModel(
          id: 1,
          username: 'abdullabaylis',
          avatarUrl:
              'https://instagram.fgyd4-2.fna.fbcdn.net/v/t51.2885-15/228640666_224555699564584_3086103443573315044_n.jpg?stp=dst-jpg_e35_p1080x1080&_nc_ht=instagram.fgyd4-2.fna.fbcdn.net&_nc_cat=104&_nc_ohc=YvGWh8Bd558AX_IKF_p&edm=ALQROFkBAAAA&ccb=7-4&ig_cache_key=MjYzMDA3NzczMzkyMTQyMjcxOQ%3D%3D.2-ccb7-4&oh=00_AT_6qvo0B4fjzZ_zjbGCCqEWLqLQQaPi62mWMAnIbElKvw&oe=625E7391&_nc_sid=30a2ef',
        ),
        description:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book',
        imageUrls: [
          'https://unsplash.com/photos/AkGhXKNazSk/download?ixid=MnwxMjA3fDB8MXxhbGx8NHx8fHx8fDJ8fDE2NDk5MzIyMzU&force=true',
          'https://unsplash.com/photos/Yh2Y8avvPec/download?ixid=MnwxMjA3fDF8MXxhbGx8MTZ8fHx8fHwyfHwxNjQ5OTMyMjM1&force=true',
        ],
      ),
    ].obs;
  }

  MainScreenViewModel() {
    initialize();
  }
}
