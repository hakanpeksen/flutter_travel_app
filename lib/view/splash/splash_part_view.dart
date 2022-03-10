part of 'splash_view.dart';

CustomTextRich _buildTextRich() {
  return CustomTextRich(
    textSpan1: TextConstant.instance.headerText1,
    textSpan1Style: AppTextStyles.headline4.copyWith(fontWeight: FontWeight.normal),
    textSpan2: TextConstant.instance.headerText2,
    textSpan2Style: AppTextStyles.headline4,
    textAlign: TextAlign.center,
  );
}

Text _descriptionText(BuildContext context) {
  return Text(TextConstant.instance.description,
      style: context.textTheme.bodyText2?.copyWith(color: context.colorScheme.surface));
}
