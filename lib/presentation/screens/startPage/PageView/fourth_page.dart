import 'package:flutter/material.dart';
import 'package:netflix/presentation/screens/startPage/PageView/background.dart';
import 'package:netflix/presentation/widgets/films_list_background.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return BackgroundGgradient(
            child: FittedBox(
          fit: BoxFit.fitWidth,
          child: SizedBox(
            height: constraints.maxHeight + constraints.maxHeight / 15,
            width: constraints.maxWidth,
            child: const Column(
              children: [
                MovieListBackground(),
                MovieListBackground(),
                MovieListBackground(),
                MovieListBackground(),
                MovieListBackground(),
              ],
            ),
          ),
        ));
      },
    ));
  }
}
