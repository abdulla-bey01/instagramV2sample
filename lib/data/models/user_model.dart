class UserModel {
  final dynamic id;
  final String username;
  final String avatarUrl;
  final bool hasStory;
  UserModel({
    required this.id,
    required this.username,
    required this.avatarUrl,
    this.hasStory = false,
  });
}
