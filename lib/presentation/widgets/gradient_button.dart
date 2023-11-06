import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:get/get.dart';
import 'package:netflix/internal/utils/constants.dart';
import 'package:netflix/internal/utils/localization/Languages/word_Localization.dart';

class ButtonWithGradient extends StatelessWidget {
  const ButtonWithGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return GestureDetector(
        onTap: () {},
        child: Container(
          height: MediaQuery.of(context).size.height / 15,
          width: MediaQuery.of(context).size.width / 1.5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: primaryRedColor,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 10,
                  offset: Offset(0, 5),
                  inset: true,
                  color: Colors.black,
                ),
                BoxShadow(
                    blurRadius: 20,
                    offset: Offset(0, 10),
                    inset: true,
                    color: Colors.white)
              ]),
          child: Center(
            child: Text(WordLocalizations.GetStarted.tr,
                style: Theme.of(context).textTheme.labelLarge),
          ),
        ),
      );
    });
  }
}
