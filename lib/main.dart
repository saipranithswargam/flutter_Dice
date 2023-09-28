import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart'; //a better practice to iport files this way

//all statements must end with semi-colans
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
          // backgroundColor: Colors.cyanAccent, //this returns a value of type color wch is needed by backgroundColor
          //to get a color gradient we cannot directly use backgroundColors but instead if we wrap the body with container we can customise and style accordingly
          body: GradientContainer(colors: [
        Colors.cyanAccent,
        Colors.cyan
      ]) //the inbuilt constructor function is called here
          ),
    ),
  ); //const helps dart to optimise runtime performance
//this keyword is must in all the flutter apps
//this above function is inbuilt function and its main job is to show something on to the screen
//in dart we are not allowed to run functions in main.dart file jst like that we need a main function in wch we can execute these functions
// run app has one positional argument wch is a widget or widget tree as a value
//flutter ui's are build with widgets
//nesting of widgets is called widget tree
//we have many built-in widgets but we can also build our own custom widgets
//from the widget catelog we hve in flutter documentation we need to have atleast two core widgets offered by flutter to have a basic ui
//material app is a constructor function of materialApp class
//home named argument is important to display something onto screen i.e., we must set it
//scaffold helps in making screens beautiful and making multiple screens
}

//we can make our own custom widgets with class whixh extends StatelessWidget and as method called build which receives a context as
//an argument by flutter automatically and should return a widget
