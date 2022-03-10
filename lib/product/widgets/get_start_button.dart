import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../view/home/home_view.dart';
import '../constants/text/text_constant.dart';
import '../init/shared_manager.dart';

class GetStartButton extends StatelessWidget {
  const GetStartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style:
            ButtonStyle(backgroundColor: MaterialStateProperty.all(context.colorScheme.secondary)),
        onPressed: () async {
          await SharedManager.instace.setBoolValue(SharedKeys.showSplashView, true);
          await Navigator.of(context)
              .pushReplacement(MaterialPageRoute(builder: (context) => const HomeView()));
        },
        child: Text(TextConstant.instance.startedButtonText, style: context.textTheme.subtitle1));
  }
}
