import 'package:flutter/material.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  final Color color1;
  final Color color2;
  final Color color3;
  const GradientContainer(
    this.color1,
    this.color2,
    this.color3, {
    super.key,
  });

  void rollDice() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2, color3],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(padding: const EdgeInsets.only(top: 20,),
              foregroundColor:  Colors.lime,textStyle: const TextStyle(fontSize: 30,),),
              child: Text("Roll Dice")),
            Image.asset('img/dice-1.png',
            width: 300,),
          ],
        ),
      ),
    );
  }
}
