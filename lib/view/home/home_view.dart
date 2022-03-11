import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../product/constants/app_constant.dart';
import '../../product/constants/image/png_constant.dart';
import '../../product/constants/text/text_constant.dart';
import '../../product/init/theme/text_style.dart';
import '../../product/widgets/custom_textrich.dart';
import '../../product/widgets/decoration/custom_decoration.dart';
import '../../product/widgets/input/input_field.dart';
import '../../product/widgets/padding/custom_padding.dart';
import '../../product/widgets/shadow/text_shadow.dart';

part 'home_part_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildScaffoldView(context);
  }

  Scaffold _buildScaffoldView(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      buildDecorationContainer(context), // Header, SearchInput
      Padding(
          padding: const CustomPadding.normalHorizontal(), // horizontal: 30
          child: buildColumnBody(context))
    ]));
  }

  // One
  Container buildDecorationContainer(BuildContext context) {
    return Container(
        height: context.dynamicHeight(0.4),
        decoration: CustomDecoration.onlyLeftAndRight(context),
        child: _buildHeaderItems(context));
  }

  // Two
  Padding _buildHeaderItems(BuildContext context) {
    return Padding(
      padding: const CustomPadding.onlyLTRB(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeaderRow(context),
          SizedBox(height: context.mediumValue), // height * 0.04;
          _buildTextRich(context),
          SizedBox(height: context.mediumValue),
          _buildSearchInput(context),
          SizedBox(height: context.mediumValue),
        ],
      ),
    );
  }

  Column buildColumnBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: context.mediumValue), // height * 0.04;
        _buildTextSaved, // Saved Text
        SizedBox(height: context.dynamicHeight(0.37), child: _buildGridViewSizedBox(context)),
        _buildTextTravel, //  // Travel Text
        SizedBox(height: context.normalValue), // height * 0.02;
        _buildBottomItems(context),
      ],
    );
  }
}
