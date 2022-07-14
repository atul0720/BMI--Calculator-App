import 'package:flutter/material.dart';
import '../Constants.dart';
class BottomButton extends StatelessWidget {

  BottomButton({required this.onTap,required this.buttonTitle});

  final void Function()? onTap; //ToDo:Passing Function it must be of Void Type
  final String  buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomCardContainer,
        child: Center(child: Text(buttonTitle,style: kLargeButtonSize,)),
        margin: EdgeInsets.only(top: 10.0),
        height: kBottomContainerHeight,
        padding: EdgeInsets.only(bottom: 20.0), // adding padding to Bottom so that it user Accidentally does not exit our App
        width: double.infinity, // stretching to Maximum Height
      ),
    );
  }
}