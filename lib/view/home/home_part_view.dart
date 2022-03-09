part of 'home_view.dart';

Row _buildHeaderRow(BuildContext context) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
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
    textSpan1Style: AppTextStyles.headline4.copyWith(fontSize: 40),
    textSpan2: TextConstant.instance.homeText2,
    textSpan2Style: AppTextStyles.headline4.copyWith(fontSize: 35, fontWeight: FontWeight.normal),
  );
}

Row _buildBottomRow(BuildContext context) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Container(
          width: context.highValue, //  height * 0.1;
          height: context.highValue,
          child: Image.asset(PngConstant.instance.add),
          decoration: CustomDecoration(context)),
      Image.asset(PngConstant.instance.ashok),
      Image.asset(PngConstant.instance.jack),
    ],
  );
}

Container _buildContainerInput(BuildContext context) {
  return Container(
      decoration: BoxDecoration(boxShadow: [TextShadowCustom(context)]),
      child: SearchInputField(data: Theme.of(context)));
}

Text get _buildTextSaved => Text(TextConstant.instance.savedText, style: AppTextStyles.headline6);

Text get _buildTextTravel => Text(TextConstant.instance.travelText, style: AppTextStyles.headline6);
