import 'package:flutter/material.dart';
import 'package:roll_dice_app/dice_roller.dart';

final startalignment = Alignment.topLeft;
final endalignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});
  const GradientContainer.purple({super.key})
      : color1 = const Color.fromARGB(255, 16, 153, 195),
        color2 = const Color.fromARGB(255, 12, 55, 88);

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2], begin: startalignment, end: endalignment),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
