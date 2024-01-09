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
  var currentDiceRoll = 2;
  final random = Random();
  void rollDice() {
    setState(() {
      currentDiceRoll = random.nextInt(5) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image(
          image: AssetImage('assets/images/dice-$currentDiceRoll.png'),
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(
              //   top: 20,
              // ),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                  fontSize: 28,
                  backgroundColor: Color.fromARGB(255, 9, 126, 42)),
            ),
            child: const Text('RollDice'))
      ],
    );
  }
}
