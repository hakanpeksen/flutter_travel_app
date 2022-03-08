import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../view/splash/splash_model.dart';

class SplashImage extends StatelessWidget {
  const SplashImage({Key? key, required this.model}) : super(key: key);

  final SplashModel model;

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: SvgPicture.asset(
        model.imageWithPath,
        alignment: Alignment.bottomCenter,
      ),
    );
  }
}



  //  return Align(
  //     alignment: const AlignmentDirectional(0, 1),
  //     child: SvgPicture.asset(model.imageWithPath),
  //   );