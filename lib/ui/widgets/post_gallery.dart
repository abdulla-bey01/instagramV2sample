import 'package:flutter/material.dart';
import '/ui/view-models/concrency/post_view_model.dart';
import 'package:pageviewj/pageviewj.dart';
import 'image_with_loading.dart';

class PostGallery extends StatelessWidget {
  const PostGallery({
    Key? key,
    required this.postViewModel,
  }) : super(key: key);

  final PostViewModel postViewModel;

  @override
  Widget build(BuildContext context) {
    return PageViewJ(
      transform: CubeTransform(),
      onPageChanged: (index) => postViewModel.updateCurrentImageIndex(index),
      itemCount: postViewModel.post.imageUrls.length,
      itemBuilder: (context, index) {
        final _imageUrl = postViewModel.post.imageUrls[index];
        return ImageWithLoadingWidget(
          url: _imageUrl,
          width: MediaQuery.of(context).size.width,
          borderRadius: BorderRadius.circular(0.0),
        );
      },
    );
  }
}
