import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  IconText(this.icon, this.text);
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFD1D1D4)),
          color: Color(0xFFdfddff),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 30,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                text,
                style: TextStyle(
                    color: Color(0xFF7067FF),
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              )
            ],
          ),
        ),
      ),
    );
  }
}
