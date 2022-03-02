class TextConstant {
  static TextConstant? _instace;
  static TextConstant get instance {
    _instace ??= TextConstant._init();
    return _instace!;
  }

  TextConstant._init();

  final String headerText1 = "Get Ready for\n";
  final String headerText2 = "New Adventures";
  final String description = "Pack your things and make more memories Outdoor";

  final String homeText1 = 'Welcome,\n';
  final String homeText2 = 'Charlie';
  final String savedText = 'Saved Places';
  final String travelText = 'Travel Buddies';

  final hintText = 'Search';
}
