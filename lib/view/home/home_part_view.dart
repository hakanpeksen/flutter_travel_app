part of 'home_view.dart';

Row _buildHeaderRow(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Image.asset(PngConstant.instance.notification),
      SizedBox(width: context.mediumValue),
      Image.asset(PngConstant.instance.menu),
    ],
  );
}

CustomTextRich _buildTextRich(BuildContext context) {
  return CustomTextRich(
    textSpan1: TextConstant.instance.homeText1,
    textSpan1Style: _homeText1Style(context),
    textSpan2: TextConstant.instance.homeText2,
    textSpan2Style: _homeText2Style(context),
  );
}

TextStyle? _homeText1Style(BuildContext context) {
  return context.textTheme.headline4
      ?.copyWith(fontSize: 40, color: context.colorScheme.primary, fontWeight: FontWeight.bold);
}

TextStyle? _homeText2Style(BuildContext context) =>
    context.textTheme.headline4?.copyWith(fontSize: 35);

Text _buildTextSaved(BuildContext context) {
  return Text(TextConstant.instance.savedText, style: _subHeaderStyle(context));
}

Text _buildTextTravel(BuildContext context) =>
    Text(TextConstant.instance.travelText, style: _subHeaderStyle(context));

TextStyle? _subHeaderStyle(BuildContext context) {
  return context.textTheme.headline6?.copyWith(
    fontWeight: FontWeight.w500,
    color: context.colorScheme.primary,
  );
}
