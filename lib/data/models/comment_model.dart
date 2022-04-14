import '/data/models/user_model.dart';

class CommentModel {
  final dynamic id;
  final UserModel author;
  final String content;
  final dynamic toAnswerOfCommentId;
  final List<CommentModel> answers;
  CommentModel({
    required this.id,
    required this.author,
    required this.content,
    required this.toAnswerOfCommentId,
    required this.answers,
  });
}
