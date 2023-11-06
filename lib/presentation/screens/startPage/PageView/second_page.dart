import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:netflix/internal/utils/localization/Languages/word_Localization.dart';
import 'package:netflix/presentation/screens/startPage/PageView/background.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return BackgroundGgradient(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                Center(
                  child: Lottie.asset(
                    'assets/background_for_startPage/second_page.json',
                    frameRate: FrameRate(210),
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  child: Text(
                    WordLocalizations.Page2Title.tr,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge
                        ?.copyWith(fontSize: constraints.maxHeight / 25),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  child: Text(
                    WordLocalizations.Page2SubTitle.tr,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium
                        ?.copyWith(fontSize: constraints.maxHeight / 40),
                  ),
                )
              ]));
        },
      ),
    );
  }
}
