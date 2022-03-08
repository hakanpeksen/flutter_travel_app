class SplashModel {
  final String imageName;

  SplashModel(this.imageName);
  String get imageWithPath => 'assets/svg/$imageName.svg';
}
