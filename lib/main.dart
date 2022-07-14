import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'screens/Input__Page.dart'; // For using Input Page in Our App

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //ToDo: Using Routes if we have More than 3 Screen or Complex App
      //ToDo:   initialRoute: 'InputPage',
      //ToDo:   routes: {
      //ToDo:     'InputPage':(context) => InputPage(),
      //ToDo:    'resultScreen':(context) => ResultsPage(),
      //ToDo:   },
      // TODO: For Customizing a Theme we use CopyWith Property in Theme Dark Theme Already Customize text to White
      theme: ThemeData.dark().copyWith(
         appBarTheme: AppBarTheme( // setting AppBar Theme
           color: const Color(0xFF0A0E21),
         ),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ), // For Dark Theme with Customization

      //TODO: For Making our Own Theme
      // theme: ThemeData(
      //   primaryColor: Color(0xFF0A0E21), // For all App bar inside our App we
      //     scaffoldBackgroundColor: Color(0xFF0A0E21), // For setting Background Color of Any Page
      //     //TODO: we use 0xFF For Fully Opaque Color
      //   accentColor: Colors.purple, // For all Buttons or Icons in Our App
      //   textTheme: TextTheme(
      //     bodyText1: TextStyle(color: Color(0xFFFFFFFF)) // For White Color of Text
      //   )
      //
      // ),
      home: InputPage(),
    );
  }
}




