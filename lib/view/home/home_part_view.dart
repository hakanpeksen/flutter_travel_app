part of 'home_view.dart';

// Three
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

// Four
CustomTextRich _buildTextRich(BuildContext context) {
  return CustomTextRich(
    textSpan1: TextConstant.instance.homeText1,
    textSpan1Style: AppTextStyles.headline4.copyWith(fontSize: 40),
    textSpan2: TextConstant.instance.homeText2,
    textSpan2Style: AppTextStyles.headline4.copyWith(fontSize: 35, fontWeight: FontWeight.normal),
  );
}

// Five
Container _buildSearchInput(BuildContext context) {
  return Container(
      decoration: BoxDecoration(boxShadow: [TextShadowCustom(context)]),
      child: SearchInputField(data: Theme.of(context)));
}

// Six
Text get _buildTextSaved => Text(TextConstant.instance.savedText, style: AppTextStyles.headline6);
Text get _buildTextTravel => Text(TextConstant.instance.travelText, style: AppTextStyles.headline6);

// Seven
GridView _buildGridViewSizedBox(BuildContext context) {
  return GridView.count(
    padding: const CustomPadding.mediumTop(), // super.only(top: 20);
    childAspectRatio: 1.490,
    physics: const NeverScrollableScrollPhysics(),
    crossAxisCount: crossAxisCount, // yatayda gözüken adet
    crossAxisSpacing: crossAxisSpacing,
    mainAxisSpacing: mainAxisSpacing,

    children: [for (var country in PngConstant.instance.countries) Image.asset(country.toImagePng)],
  );
}

// Eight
Row _buildBottomItems(BuildContext context) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Container(
          height: context.highValue, //  //  height * 0.1;
          child: Image.asset(PngConstant.instance.add),
          decoration: CustomDecoration(context)),
      Image.asset(PngConstant.instance.ashok),
      Image.asset(PngConstant.instance.jack),
    ],
  );
}
