
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color buttonColors;
  final Color textColor;
  final VoidCallback callbackAction;
  final String title;
  final double width;
  final double height;
  const CustomButton({Key key, this.callbackAction, this.title, this.width, this.height, this.buttonColors, this.textColor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ThemeData(
      fontFamily: 'OpenSans'
    );
    return Material(
      elevation: 2,
      color: buttonColors,
      child: OutlineButton(
        borderSide: BorderSide(color: textColor),
        highlightElevation: 4,
        child: Container(
          width: width,
          alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: textColor,
                fontSize: 14),
          ),
        ),
        onPressed: callbackAction,
      ),  
    );
  }
}