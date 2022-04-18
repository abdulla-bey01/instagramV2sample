import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import '/data/models/user_model.dart';
import '/data/models/post_model.dart';
import '/ui/view-models/abstraction/initializable.dart';

class PostViewModel extends RxController implements Initializable {
  final Rx<PostModel> _post;
  PostModel get post => _post.value;

  late RxInt _currentImgIndex;
  int get currentImageIndex => _currentImgIndex.value;

  void updateCurrentImageIndex(int index) {
    _currentImgIndex.value = index;
    debugPrint(currentImageIndex.toString());
  }

  void toggleLike() {
    _post.value.whoLiked ??= <UserModel>[];
    if (!_post.value.isLiked) {
      _post.value.whoLiked!.add(
        UserModel(
            id: 'current-user-id', username: 'current-user', avatarUrl: ''),
      );
    } else {
      _post.value.whoLiked!
          .removeWhere((element) => element.id == 'current-user-id');
    }
    _post.refresh();
  }

  @override
  void initialize() {
    _currentImgIndex = 0.obs;
  }

  PostViewModel({
    required PostModel post,
  }) : _post = post.obs {
    initialize();
  }
}
