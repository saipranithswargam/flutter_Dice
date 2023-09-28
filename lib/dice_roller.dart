import "package:flutter/material.dart";
import "dart:math";

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;
  void rollDice() {
    var diceRoll = Random().nextInt(6) + 1;
    setState(() {
      currentDiceRoll = diceRoll;
    });
    // activeDiceImage = 'assets/images/dice-2.png';
    //this doesnt work since we are extending stateless Widget
    //onPressed needs a void function
  }

  @override
  Widget build(context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        /*this mainAxisSize min makes column to take only the minimum amout of size required for it to render its childern*/ children: [
          Image.asset(
            'assets/images/dice-$currentDiceRoll.png',
            width: 200, //this is in pixels
          ),
          TextButton(
              onPressed: rollDice
              /*() {
                  
                }  his here is a anonymous function in dart*/
              ,
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(30),
                  // padding:EdgeInsets.only(top: 20), to give padding only on top
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 28)),
              child: const Text("Roll Dice"))
        ]);
  }
}
