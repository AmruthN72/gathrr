import 'package:flutter/material.dart';
import 'package:gathrr/rectangularButton.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 200),
                Expanded(
                  child: Text(
                    'Hi Jeet,\nWelcome to,\nGatherr',
                    style: TextStyle(
                        fontSize: 40,
                        letterSpacing: 1.1,
                        color: Color(0xDD6c63ff),
                        fontWeight: FontWeight.w800),
                  ),
                ),
                Expanded(
                  child: Text(
                    ' Please turn on your GPS to find out better events suggestions near you.',
                    style: TextStyle(
                        fontSize: 24,
                        color: Color(0xFF6c63ff),
                        fontWeight: FontWeight.w300),
                  ),
                ),
                RectangularButton(
                    'Turn On GPS', Colors.white, Color(0xFF5663FF)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
