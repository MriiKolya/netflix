// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix/domain/repositories/localization_controller.dart';
import 'package:netflix/internal/utils/constants.dart';
import 'package:netflix/internal/utils/localization/Languages/word_Localization.dart';
import 'package:netflix/presentation/screens/startPage/PageView/first_page.dart';
import 'package:netflix/presentation/screens/startPage/PageView/fourth_page.dart';
import 'package:netflix/presentation/screens/startPage/PageView/second_page.dart';
import 'package:netflix/presentation/screens/startPage/PageView/third_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';




class StartPage extends StatelessWidget {
  StartPage({super.key});

  final localizationController = Get.put(LocalizationController());
  final _controllerPage = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(children: [
              PageView(
                controller: _controllerPage,
                children: const [
                  FirstPage(),
                  SecondPage(),
                  ThirdPage(),
                  FourthPage(),
                ],
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height / 3,
                left: MediaQuery.of(context).size.width / 2.3,
                child: SmoothPageIndicator(
                  controller: _controllerPage,
                  count: 4,
                  effect: const WormEffect(
                    activeDotColor: Colors.red,
                    dotHeight: 10,
                    dotWidth: 10,
                  ),
                ),
              )
            ]),
          ),
          // Container(
          //   width: 150,
          //   height: 150,
          //   decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(50),
          //       color: primaryRedColor,
          //       boxShadow: [
          //         const BoxShadow(
          //           offset: Offset(-20, -20),
          //           blurRadius: 60,
          //           color: Colors.white,
                    
          //         ),
          //         const BoxShadow(
          //           offset: Offset(-20, -20),
          //           blurRadius: 60,
          //           color: Colors.white,
          //         )
          //       ]),
          // ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(
                  image: const AssetImage('assets/logo/Netflix_Logo.png'),
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.height / 20,
                ),
                Text(WordLocalizations.Privacy.tr),
                TextButton(
                    onPressed: () {
                      localizationController.Changelanguages();
                    },
                    child: Text(WordLocalizations.languages.tr))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
