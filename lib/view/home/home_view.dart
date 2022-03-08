import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../product/constants/app_constant.dart';
import '../../product/constants/image/png_constant.dart';
import '../../product/constants/text/text_constant.dart';
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
        // resizeToAvoidBottomInset: false,
        body: ListView(
      children: [
        // Header, SearchInput
        buildDecorationContainer(context),
        Padding(
          padding: const CustomPadding.normalHorizontal(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: context.dynamicHeight(0.04)),
              // Saved Places
              _buildTextSaved(context),
              _buildGridViewSizedBox(context),
              SizedBox(height: context.dynamicHeight(0.03)),
              // Travel Buddies
              _buildTextTravel(context),
              SizedBox(height: context.dynamicHeight(0.02)),
              _buildBottomRow(context),
            ],
          ),
        ),
      ],
    ));
  }

  Container buildDecorationContainer(BuildContext context) {
    return Container(
        height: context.dynamicHeight(0.44),
        decoration: CustomDecoration.onlyLeftAndRight(context),
        child: buildPadding(context));
  }

  Padding buildPadding(BuildContext context) {
    return Padding(
      padding: const CustomPadding.onlyLTRB(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeaderRow(context),
          SizedBox(height: context.mediumValue),
          _buildTextRich(context),
          SizedBox(height: context.mediumValue), // height * 0.04;
          _buildContainerInput(context),
          SizedBox(height: context.mediumValue),
        ],
      ),
    );
  }

  SizedBox _buildGridViewSizedBox(BuildContext context) {
    return SizedBox(
      height: context.dynamicHeight(0.37),
      child: GridView.count(
        padding: const CustomPadding.mediumTop(), // super.only(top: 20);
        childAspectRatio: 1.490,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: crossAxisCount, // yatayda gözüken adet
        crossAxisSpacing: crossAxisSpacing,
        mainAxisSpacing: mainAxisSpacing,

        children: [
          for (var country in PngConstant.instance.countries) Image.asset(country.toImagePng)
        ],
      ),
    );
  }
}
