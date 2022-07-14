import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/reusable_card.dart';
import '../components/icon_content.dart';
import '../Constants.dart';
import '../components/bottom_button.dart';
import '../components/round_icon_button.dart';
import 'package:bmi_calculator/calculator_brain.dart';
import 'results_page.dart';
//ToDo: Route: is Called Screen or Page
//ToDo: Context: in any Thing Refers to Build Context of Our Page ,it is Simply a Way to Figure out Where in Widget Tree this Particular Widget live
//ToDo: By Setting the Route we can Move to Different Screen of our App, it act as Stack of Routes
//ToDo: As Long as our Scaffold Widget is Inside our Stateless Widget we use Context for Navigating to Different Screen

//ToDo: Dart Ternary Operator use to shorthand code for checking Conditions
//TODO: Example int myAge = 12;
//ToDo: bool canBuyAlcohol = myAge > 21 ? true : false; for checking conditions
// Using Enums For making More Sensible code For choosing Gender, GenderType Here is Class Name
  enum Gender {
    Male,
    Female,
  }
class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

//TODO: Enums: When there are Lots of Different States/Operations of code we don't Relay on Numbers and we can give Different MeaningFul Names to these states

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

    int height = 165; // setting height to 180
    int Weight = 60; // setting Weight to 60
    int Age = 18; // Setting Age Here
    Gender? selectedGender;
    // ToDo: Using Ternary Operator to Short this code
  // Color maleCardColour = inactiveCardColour; // as stateful Widget Properties are mutuable
  // Color femaleCardColour = inactiveCardColour;
  // void  UpdateColour(Gender selectedGender){
  //   //gender = 1 then male , -> For getting rid of it we use Enum Operators
  //   // gender = 2 then female,
  //   if(selectedGender == Gender.Male) { // based on Gender we are updating interface
  //     if(maleCardColour == inactiveCardColour){
  //       maleCardColour = activeCardColour;
  //       femaleCardColour = inactiveCardColour; // For Switching one of and one on same time
  //     }
  //     else{
  //       maleCardColour = inactiveCardColour;
  //     }
  //   }
  //   // gender =2 For Female
  //   if(selectedGender == Gender.Female) { // based on Gender we are updating interface
  //     if(femaleCardColour == inactiveCardColour){
  //       femaleCardColour = activeCardColour;
  //       maleCardColour = inactiveCardColour;
  //     }
  //     else{
  //       femaleCardColour = inactiveCardColour;
  //     }
  //   }
  //
  // }
  @override
  Widget build(BuildContext context) { // Passing Context
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Center(child: Text("BMI CALCULATOR")),
           //   backgroundColor: Color(0xFF0A0E21),
            ),
            //Todo: If we want to make Border Radius circular inside Container then we can't use color property inside Container we have to use it in decoration
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: ReusableCard(
                          onPress: (){
                              setState(() {
                                 selectedGender = Gender.Male;
                              },);
                          },
                          colour: selectedGender == Gender.Male ? kActiveCardColour : kInactiveCardColour,
                          cardChild: Container(
                            margin: EdgeInsets.symmetric(vertical: 20.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('images/imman.jpg'),
                              maxRadius: 70.0,
                            ),
                          ), // Specifying icon and Text here
                        ),
                      ),
                      Expanded(
                        child: ReusableCard(
                          onPress: (){
                            setState(() {
                              selectedGender = Gender.Female;
                            },);
                          },
                          colour: selectedGender == Gender.Female ? kActiveCardColour : kInactiveCardColour,
                          cardChild:  Container(
                            margin: EdgeInsets.symmetric(vertical: 20.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('images/imwomen.jpg'),
                              maxRadius: 70.0,
                            ),
                          ), // Specifying  ,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Text('HEIGHT', style: kLabelTextStyle,),// Using Same Style as Other Widget
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.baseline,//Todo: For align at same Base Line we must Specify TextBaseline Property
                         textBaseline: TextBaseline.alphabetic, // for align  alphabetic text
                         children: [
                           Text(height.toString(), //ToDo: Converting int to String
                             style: kNumberTextStyle,),
                           Text('cm',style: kLabelTextStyle, )
                         ],
                       ),
                      SliderTheme( // For Customizing our Slider Theme
                        data: SliderTheme.of(context).copyWith(
                         thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                          inactiveTrackColor: Color(0xFF8D8E98),
                          activeTrackColor: Colors.white,
                          thumbColor: Color(0xFFEB1555),
                          overlayColor: Color(0x29EB1555), //ToDo: 0xFF -> Use for Fully Opaque Object , overlayColor(16% Opacity)
                        ), // here we are Passing Build Context of our state or current State of our App or what it look like default as it is
                        child: Slider(
                          value: height.toDouble(), //ToDo: For converting Integer to Double value
                          min: 120.0,
                          max: 220.0,
                          onChanged: (double newValue){
                            //ToDo: OnChanged value property accepts Parent Widget to Rebuild to update Slider value on Moving
                           setState(() {
                             height = newValue.round();//ToDo: Converting Double to Integer
                           },);

                          },
                        ),
                      )

                    ],
                  ),
                  ), // Specifying color of Card
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: ReusableCard(
                          colour: kActiveCardColour,
                          cardChild: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("WEIGHT",style: kLabelTextStyle,),
                              Text(Weight.toString(),style: kNumberTextStyle,),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  //ToDo: Flutter Will Not Support Two Floating Button on Same Screen
                                  RoundedIconButton(
                                    icon: FontAwesomeIcons.minus,
                                    onPress:  (){
                                      setState(() {
                                        Weight--;
                                      },);
                                    }
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                 RoundedIconButton(
                                   icon: FontAwesomeIcons.plus,
                                   onPress: (){
                                     setState(() {
                                       Weight++;
                                     },);
                                   },
                                 )
                                ],
                              )
                            ],
                          ),

                        ),
                      ),
                      Expanded(
                        child: ReusableCard(
                          colour: kActiveCardColour,
                          cardChild: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("AGE",style: kLabelTextStyle,),
                              Text(Age.toString(),style: kNumberTextStyle,),
                              SizedBox(
                                height: 10.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                 RoundedIconButton(
                                     icon: FontAwesomeIcons.minus,
                                     onPress: (){
                                       setState(() {
                                         Age--;
                                       },);
                                     }
                                 ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  RoundedIconButton(
                                      icon: FontAwesomeIcons.plus,
                                      onPress: (){
                                        setState(() {
                                          Age++;
                                        },);
                                      }
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                BottomButton( // By Customizing our Bottom Button import bottom_button.dart
                  onTap: (){
                    //ToDo: For 2 or 3 Screen App we use Simply Navigating Options
                    //ToDo: For App with More Than 3 Screens we define Material Page Route in Main.dart file
                    CalculatorBrain calculate = CalculatorBrain(height: height, weight: Weight);
                  //  Navigator.pushNamed(context, 'resultScreen');
                     Navigator.push( context , MaterialPageRoute(builder: (context) => ResultsPage(
                       //ToDo: Passing these bmi values  to next Page
                       bmiResult: calculate.calculateBMI(),
                       resultText: calculate.getResult(),
                       interpretation: calculate.getInterpretation(),
                     )),);
                  },
                  buttonTitle: 'CALCULATE',
                ),
              ],
            ),

            //Todo: Floating Action Button is Not Needed therefore I am Removing it
            // floatingActionButton: Theme( // Changing Particular Widget Theme
            //   data: ThemeData(accentColor: Colors.purple),
            //   child: FloatingActionButton(
            //     onPressed: () {
            //
            //     },
            //     child: Icon(Icons.add),
            //   ),
            ),);
  }
}







