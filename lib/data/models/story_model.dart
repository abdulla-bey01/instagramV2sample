import '/data/models/user_model.dart';

class StoryModel {
  final dynamic id;
  final UserModel author;
  final List<String> imageUrls;
  StoryModel({
    required this.id,
    required this.author,
    required this.imageUrls,
  });
}
