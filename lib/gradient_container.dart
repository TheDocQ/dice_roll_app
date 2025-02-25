import 'package:flutter/material.dart';
import 'package:dice_roll_app/dice_roller.dart';
//import 'package:dice_roll_app/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  //class tự tạo (custom widget)
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.purple({super.key}):color1 = Colors.deepPurple, color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // tạo dải màu
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

/* class GradientContainer extends StatelessWidget {
  //class tự tạo (custom widget)
  const GradientContainer({super.key, required this.colors}); phải có required vì colors không để null được

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // tạo dải màu
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: StyledText('Hello World'),
      ),
    );
  }
} */