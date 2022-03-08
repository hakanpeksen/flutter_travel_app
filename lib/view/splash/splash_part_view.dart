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

CustomTextRich _buildTextRich(BuildContext context) {
  return CustomTextRich(
    textSpan1: TextConstant.instance.headerText1,
    textSpan1Style: _headerText1Style(context),
    textSpan2: TextConstant.instance.headerText2,
    textSpan2Style: _headerText2Style(context),
    textAlign: TextAlign.center,
  );
}

Text _descriptionText(BuildContext context) {
  return Text(TextConstant.instance.description,
      style: context.textTheme.bodyText2?.copyWith(color: context.colorScheme.surface));
}

ElevatedButton buildElevatedButton(BuildContext context) {
  return ElevatedButton(
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(context.colorScheme.secondary)),
      onPressed: () async {
        await SharedManager.instace.setBoolValue(SharedKeys.showSplashView, true);
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) => const HomeView()));
      },
      child: Text(TextConstant.instance.startedButtonText, style: context.textTheme.subtitle1));
}
