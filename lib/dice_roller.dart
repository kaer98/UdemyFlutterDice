import 'package:flutter/material.dart';
import 'package:udemy_1/text_styled.dart';
import 'dart:math';

final random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;
  

  void rollDice() {
    setState(() {
      currentDiceRoll = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$currentDiceRoll.png",
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          child: const TextStyled('Roll the dice'),
        ),
      ],
    );
  }
}
