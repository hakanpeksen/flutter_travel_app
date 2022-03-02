import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../product/constants/app_constant.dart';
import '../../product/constants/image/svg_constant.dart';
import '../../product/constants/text/text_constant.dart';
import '../../product/widgets/build_positioned.dart';
import '../../product/widgets/custom_textrich.dart';
import '../../product/widgets/tab_indicator.dart';

part 'splash_part_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildStackView(context),
    );
  }

  Stack _buildStackView(BuildContext context) {
    return Stack(fit: StackFit.expand, children: [
      buildHeaderColumn(context),
      BuilPositionedWidget(top: 10, right: 10, assetName: SvgImageConstant.instance.airplane),
      BuilPositionedWidget(top: 10, right: kZero, assetName: SvgImageConstant.instance.cloud),
      BuilPositionedWidget(
          bottom: -130, right: kZero, left: kZero, assetName: SvgImageConstant.instance.building),
      BuilPositionedWidget(
          bottom: -30, right: kZero, left: kZero, assetName: SvgImageConstant.instance.grass),
      BuilPositionedWidget(bottom: -40, assetName: SvgImageConstant.instance.girl)
    ]);
  }

  Column buildHeaderColumn(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: context.dynamicHeight(0.09)),
        _buildTextRich(context),
        SizedBox(height: context.lowValue), // height * 0.01;
        _descriptionText(context),
        SizedBox(height: context.lowValue),
        const TabIndicator(),
      ],
    );
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
}
