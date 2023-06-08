import 'package:first_app/dice_roller.dart';
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
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
