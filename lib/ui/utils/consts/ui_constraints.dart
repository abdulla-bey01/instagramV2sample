class UiConstraints {
  static UiConstraints get instance => _instance ??= UiConstraints._();
  static UiConstraints? _instance;
  UiConstraints._();
  String get logoPath => 'assets/vectors/logo.svg';
  String get addPath => 'assets/vectors/add.svg';
  String get heartPath => 'assets/vectors/heart.svg';
  String get messengerPath => 'assets/vectors/messenger.svg';
  String get commentPath => 'assets/vectors/comment.svg';
  String get sharePath => 'assets/vectors/share.svg';
  String get bookmarkPath => 'assets/vectors/bookmark.svg';
}
