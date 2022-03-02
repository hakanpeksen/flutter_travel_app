class SvgImageConstant {
  static SvgImageConstant? _instace;
  static SvgImageConstant get instance {
    _instace ??= SvgImageConstant._init();
    return _instace!;
  }

  SvgImageConstant._init();

  final String girl = 'girl'.toSVG;
  final String building = 'building'.toSVG;
  final String cloud = 'cloud'.toSVG;
  final String airplane = 'airplane'.toSVG;
  final String grass = 'grass'.toSVG;
}

extension SVGImageConstantExtension on String {
  String get toSVG => 'assets/svg/$this.svg';
}
