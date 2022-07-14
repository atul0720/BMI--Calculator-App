
import 'package:flutter/material.dart';

const kNumberTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);
//ToDo: Flutter Constant Naming Format (Start with k Then Capital Letter Word)
const kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);
const kIconSize = 80.0; // Flutter Constant Parameter
const kBottomContainerHeight = 80.0; //Making container height as Constant
const kActiveCardColour =  Color(0xFF1D1F33); // changing Color of Card
const kBottomCardContainer = Color(0xFFEB1555);
const kInactiveCardColour = Color(0xFF111328);
const kLargeButtonSize = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold
);

//ToDo: Maps are Unordered they did not go from 0,1,2 unlike List which is Ordered
//ToDo: Result Page Constants
const kTitleTextStyle = TextStyle(
    fontSize: 50.0,
  fontWeight: FontWeight.bold
);
const kResultTextStyle = TextStyle(
    color: Color(0xFF24D876),
    fontSize: 22.0,
    fontWeight: FontWeight.bold,
);
const kBMITextStyle = TextStyle(
   fontSize: 100.0,
  fontWeight: FontWeight.bold
);
const kBodyTextStyle = TextStyle(
  fontSize: 21.0,
  height: 1.5,

);

//ToDo: Creating Map Here
//   Map<String,String> result = {
//     '1':'one',
//     '2':'Two,'
//
//    # accessing value from Map
//       print(result['1']);
//     # updating map
//     result['3'] = 'Three', -> Adding value in map
//
//   };