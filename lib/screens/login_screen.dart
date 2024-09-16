import 'package:flutter/material.dart';
import 'package:webinar_x/services/auth_method.dart';
import 'package:webinar_x/themes/colors.dart';
import 'package:webinar_x/widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthMethod _authMethod = AuthMethod();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'WEBINARX',
            style: TextStyle(
                fontSize: 23, fontWeight: FontWeight.bold, color: textColor),
          ),
          const Text(
            'Please login to proceed',
            style: TextStyle(fontSize: 18, color: textColor),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset('lib/assets/images/ic_meeting.png'),
          ),
          CustomButton(
            text: 'Login with Google',
            icon: Image.asset('lib/assets/images/ic_google.png',
                width: 30, height: 30),
            onPressed: () async {
              bool res = await _authMethod.signInWithGoogle(context);
              if (res) {
                Navigator.pushNamed(context, '/Home');
              }
            },
          ),
        ],
      ),
    );
  }
}
