import '/data/models/comment_model.dart';
import '/data/models/user_model.dart';

class PostModel {
  final dynamic id;
  final UserModel author;
  final String description;
  final List<String> imageUrls;
  late bool isLiked;
  late bool isSaved;
  List<UserModel>? whoLiked;
  final List<CommentModel> comments;

  PostModel({
    required this.id,
    required this.author,
    required this.description,
    required this.imageUrls,
    this.isLiked = false,
    this.isSaved = false,
    this.comments = const [],
  });

  @override
  String toString() {
    return 'PostModel(id: $id, author: $author, description: $description, imageUrls: $imageUrls, isLiked: $isLiked, isSaved: $isSaved, whoLiked: $whoLiked, comments: $comments)';
  }
}
