import 'package:flutter/material.dart';
import 'package:flutter_application_1/diceRoller.dart';

class GradiantBackground extends StatelessWidget {
  final Color colorTop;
  final Color colorBottom;

  const GradiantBackground(this.colorTop, this.colorBottom, {super.key});

  final alignmentLeft = Alignment.topRight;
  final alignmentRight = Alignment.bottomLeft;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [colorTop, colorBottom],
          begin: alignmentLeft,
          end: alignmentRight,
        ),
      ),
      child: const Center(
        child: Diceroller(),
      ),
    );
  }
}
