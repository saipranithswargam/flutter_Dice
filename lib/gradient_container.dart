import 'package:flutter/material.dart';
// import 'package:first_app/styled_text.dart';
import 'package:first_app/dice_roller.dart';

//we can pass in the alignment properties in below as variables as it will be easier to change them
var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

//two types of consts ==> 1.const== compile time constant we know a fixed value from beginning.
// 2.  final ==> this is not a compile time const but instead calculated on running a function or something but still it will be not chnaged once calculated

class GradientContainer extends StatelessWidget {
  // if we have a screen where we have widgets that just show the data and doesn't have any changing widget parameters then we can go for statelessWidget but the other in changing case
  final List<Color> colors;
  const GradientContainer(
      {super.key,
      required this.colors}); //this is required by stateless widget as it requires and accepts a key parameter from class which it is extended
  //when taking params as named arguments make sure to use required key
  //another way of getting colors through constructor
  GradientContainer.purple({super.key})
      : colors = [Colors.cyanAccent, Colors.cyan];
  @override //this will work even without override but for developer knowledge purpose we are using it

  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors, begin: startAlignment, end: endAlignment),
        //now since we are using dynamic values here that is variables that can be changes so we cannot assign the boxDecotation as const
        //if we do it throws an error
      ),
      child: const Center(
        //this column widget can take multiple widgets and can display them on one on another
        //this column widget takes the entire vertical space available as a column
        child: DiceRoller(),
      ),
    );
  }
}
