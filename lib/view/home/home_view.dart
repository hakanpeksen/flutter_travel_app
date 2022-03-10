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
        body: SingleChildScrollView(
      child: Column(
        children: [
          buildDecorationContainer(context), // Header, SearchInput
          Padding(
            padding: const CustomPadding.normalHorizontal(), // horizontal: 30
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: context.mediumValue), // height * 0.04;
                _buildTextSaved, // Saved Text
                _buildGridViewSizedBox(context),
                SizedBox(height: context.lowValue), // height * 0.01;
                _buildTextTravel, //  // Travel Text
                SizedBox(height: context.normalValue), // height * 0.02;
                _buildBottomRow(context),
              ],
            ),
          ),
        ],
      ),
    ));
  }

  // One
  Container buildDecorationContainer(BuildContext context) {
    return Container(
        height: context.dynamicHeight(0.4),
        decoration: CustomDecoration.onlyLeftAndRight(context),
        child: buildPadding(context));
  }

  // Two
  Padding buildPadding(BuildContext context) {
    return Padding(
      padding: const CustomPadding.onlyLTRB(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeaderRow(context),
          SizedBox(height: context.mediumValue), // height * 0.04;
          _buildTextRich(context),
          SizedBox(height: context.mediumValue),
          _buildContainerInput(context),
          SizedBox(height: context.mediumValue),
        ],
      ),
    );
  }
}
