import 'package:flutter/material.dart';

//Todo: Extracting Widgets as a Separate Class
//Todo: We can Simply Extra a Reusable Widget by going to Flutter Outline -> Select Reusable code -> then Extract Widget Method
//Todo: Key is Used to IDENTIFY Widgets, elements etc It is used when Widgets changing Position in Widget Tree

class ReusableCard extends StatelessWidget {
// const ReusableCard({Key? key,}) : super(key: key);
// In Most of Cases We don't need It Therefore we delete it
// Using Dart Color for Giving Color

//Todo: All its Property can be change only Once
//Todo: Const: is Used for Compile time only after that it Can't be Used,Whereas We use Final: Keyboard if We want to getting Something in Running State
//Todo: Stateless Widget is @Immutable Widgets means Unchangeable  it destroy early widget and rebuild again
//Todo: Reusable Card can be Created after the code is Compiled therefore it is Marked as Final

  final Color colour; // Initializing color Property so that we can create new card specify color Property but this property can't be change later
  final Widget? cardChild; // Customizing child of Reusable card
  final void Function()? onPress; // for accepting a void function we use VoidCallback Function Instead of Function

  //Todo: We can also Pass Function as Input Parameter in Dart or Assign value of Function to a Variable
  //Todo: Function Property Must be There
  //Todo: Example Car myCar = Car(drive: slowdrive ){
       //   Mycar.drive(); -> Calling drive Property of  car Class which is Function Class Car{
  //   Function drive;}
  // Todo: }

  ReusableCard({ required this.colour, this.cardChild,   this.onPress }); // giving different color to Reusable Card, specifying this Property is Mandatory

  @override
Widget build(BuildContext context) {
return GestureDetector(
  onTap: onPress,
  child:   Container(
  child: cardChild, // It is used to Customize our Reusable Card Widget
  margin: EdgeInsets.all(10.0),
  decoration: BoxDecoration(
  color: colour, // We want to Customize the color of card as we might don't want color will be same for all Cards
  borderRadius: BorderRadius.circular(10.0)),
  ),
);

}
}
