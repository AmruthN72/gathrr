import 'package:flutter/material.dart';

class RectangularButton extends StatelessWidget {
  RectangularButton(this.text, this.textColour, this.bgColour);

  final String text;
  final Color textColour;
  final Color bgColour;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0,
      color: bgColour,
      borderRadius: BorderRadius.circular(15),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: MaterialButton(
          height: 42,
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(
                color: textColour,
                fontSize: 18,
                letterSpacing: 1.2,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
