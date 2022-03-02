part of 'splash_view.dart';

TextStyle? _headerText1Style(BuildContext context) {
  return context.textTheme.headline4?.copyWith(
    fontSize: 30,
    color: context.colorScheme.primary,
  );
}

TextStyle _headerText2Style(BuildContext context) {
  return TextStyle(fontWeight: FontWeight.bold, color: context.colorScheme.primary);
}

Text _descriptionText(BuildContext context) {
  return Text(TextConstant.instance.description,
      style: context.textTheme.bodyText2?.copyWith(color: context.colorScheme.surface));
}
