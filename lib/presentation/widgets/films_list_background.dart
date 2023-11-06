import 'dart:math';

import 'package:flutter/material.dart';

class MovieListBackground extends StatelessWidget {
  const MovieListBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 1.96 * pi,
      child: SizedBox(
        height: 140,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                color: Colors.yellow,
                width: 150,
              ),
            );
          },
        ),
      ),
    );
  }
}
