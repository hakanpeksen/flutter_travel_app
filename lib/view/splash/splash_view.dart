import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:provider/provider.dart';

import '../../product/constants/text/text_constant.dart';
import '../../product/init/theme/text_style.dart';
import '../../product/widgets/custom_textrich.dart';
import '../../product/widgets/get_start_button.dart';
import '../../product/widgets/splash_image.dart';
import '../../product/widgets/tab_indicator.dart';
import 'splash_context.dart';

part './splash_part_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildScaffoldView(context);
  }

  Scaffold _buildScaffoldView(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [Expanded(child: _buildPageView(context))],
    ));
  }

  PageView _buildPageView(BuildContext context) {
    final model = context.read<SplashContext>();
    return PageView.builder(
      onPageChanged: (value) {
        model.incrementSelectedPage(value);
      },
      itemCount: SplashModels.splashItems.length,
      itemBuilder: (context, index) {
        return Stack(children: [
          Center(
              child: Column(children: [
            SizedBox(height: context.dynamicHeight(0.09)),
            _buildTextRich(),
            SizedBox(height: context.lowValue), // height * 0.01;
            _descriptionText(context),
            SizedBox(height: context.lowValue),
            buildTabSelector()
          ])),
          SplashImage(model: SplashModels.splashItems[index]),
          buidlElevatedButtonSelector(),
        ]);
      },
    );
  }

  Selector<SplashContext, int> buildTabSelector() {
    return Selector<SplashContext, int>(selector: (context, _model) {
      return _model.selectedIndex;
    }, builder: (context, value, child) {
      return TabIndicator(selectedIndex: value);
    });
  }

  Selector<SplashContext, bool> buidlElevatedButtonSelector() {
    return Selector<SplashContext, bool>(
      selector: (context, model) {
        return model.isLastPage;
      },
      builder: (context, value, child) {
        return value ? const Center(child: GetStartButton()) : const SizedBox();
      },
    );
  }
}
