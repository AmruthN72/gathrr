import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gathrr/iconTextBox.dart';
import 'package:gathrr/rectangularButton.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

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
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 160,
                  child: Icon(
                    Icons.person_rounded,
                    color: Color(0xFF5663FF),
                    size: 50,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                IconText(Icons.person_rounded, 'Name'),
                IconText(Icons.email_outlined, 'Email'),
                IconText(Icons.lock_outline_rounded, 'Password'),
                IconText(Icons.lock_outline_rounded, 'Confirm Password'),
                SizedBox(
                  height: 50,
                ),
                RectangularButton('Register', Colors.white, Color(0xFF5663FF)),
                SizedBox(height: 22),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Color(0xFF5663FF),
                          fontSize: 15,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
