import 'package:flutter/material.dart';
import 'rectangularButton.dart';
import 'iconTextBox.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Text(
                    'Gathrr',
                    style: TextStyle(
                        color: Color(0xFF6C63FF),
                        fontSize: 45,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 200,
                ),
                IconText(Icons.mail_outline_rounded, 'Email'),
                SizedBox(
                  height: 20,
                ),
                IconText(Icons.lock_outlined, 'Password'),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Color(0xFF7067FF),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.right,
                ),
                SizedBox(
                  height: 80,
                ),
                RectangularButton('Login', Colors.white, Color(0xFF5663FF)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
