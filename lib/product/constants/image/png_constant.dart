class PngConstant {
  static PngConstant? _instace;
  static PngConstant get instance {
    _instace ??= PngConstant._init();
    return _instace!;
  }

  PngConstant._init();

// İcons
  final String search = 'ic_search'.toPNG;
  final String notification = 'ic_notification'.toPNG;
  final String menu = 'ic_menu'.toPNG;
  final String add = 'ic_add'.toPNG;

  // İmages
  final countries = ['japan', 'barcelona', 'greece', 'rome'];

  final String ashok = 'ashok'.toImagePng;
  final String jack = 'jack'.toImagePng;
}

extension PngConstantExtension on String {
  String get toPNG => 'assets/png/$this.png';
}

extension PngImageExtension on String {
  String get toImagePng => 'assets/images/$this.png';
}
