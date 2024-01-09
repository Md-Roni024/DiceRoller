import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';
import 'package:first_app/text_styled.dart';
import 'package:first_app/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});
  final List<Color> colors;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          /*[
            Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 45, 7, 98)
          ]*/
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

// class GradientContainer extends StatelessWidget {
//   const GradientContainer({required this.color1, required this.color2, super.key});
//   final Color color1;
//   final Color color2;
//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [color1, color2],
//           /*[
//             Color.fromARGB(255, 26, 2, 80),
//             Color.fromARGB(255, 45, 7, 98)
//           ]*/
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: Center(
//         child: TextStyled('My Demo Text'),
//       ),
//     );
//   }
// }
