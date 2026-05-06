import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/img/dice-1.png';
  void rollDice() {
    setState(() {
      activeDiceImage = 'assets/img/dice-4.png';
    });
    print('Изменили картинку');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            foregroundColor: Colors.lime,
            textStyle: const TextStyle(
              fontSize: 30,
            ),
          ),
          child: Text("Roll Dice"),
        ),
        Image.asset(activeDiceImage, width: 300),
      ],
    );
  }
}
