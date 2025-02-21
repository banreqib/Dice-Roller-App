import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  final randomz = Random();

  var activeDiceImage = 'assets/images/dice-2.png';
  void rollDice() {
    var diceroll = randomz.nextInt(6) + 1;
    setState(() {
      activeDiceImage = 'assets/images/dice-$diceroll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                padding: EdgeInsets.only(
                  top: 20,
                ),
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 28)),
            child: const Text('Roll Dice'))
      ],
    );
  }
}
