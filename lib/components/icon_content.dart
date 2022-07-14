import 'package:flutter/material.dart';
import '../Constants.dart';

// Customizing our own Custom Widget
class IconContent extends StatelessWidget {

  IconContent({ this.icon,  this.label});

  final IconData? icon; // customize icons //Since it's optional, the property must either be nullable like this:
  final String? label; // customize Text // it can be nulllable therefore we use ? Keyword
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:<Widget>[
        Icon(
          icon,
          size: kIconSize,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label!,
          style: kLabelTextStyle,)
      ],
    );
  }
}