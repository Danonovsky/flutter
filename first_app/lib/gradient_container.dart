import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});
  const GradientContainer.purple({super.key})
      : colors = const [Colors.deepPurple, Colors.deepPurpleAccent];

  final List<Color> colors;

  rollDice() {}
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
        ),
      ),
      child: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/dice-1.png',
              width: 200,
            ),
            TextButton(
              onPressed: rollDice,
              child: const Text('Roll Dice'),
            ),
          ],
        ),
      ),
    );
  }
}
