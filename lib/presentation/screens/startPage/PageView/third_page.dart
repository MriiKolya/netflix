import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix/internal/utils/localization/Languages/word_Localization.dart';
import 'package:netflix/presentation/screens/startPage/PageView/background.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundGgradient(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/background_for_startPage/third_page.png',
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2,
                    fit: BoxFit.contain,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Text(
                      WordLocalizations.Page3Title.tr,
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge
                          ?.copyWith(fontSize: constraints.maxHeight / 30),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 10),
                    child: Text(
                      WordLocalizations.Page3SubTitle.tr,
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(fontSize: constraints.maxHeight / 40),
                    ),
                  )
                ]);
          },
        ),
      ),
    );
  }
}
