import 'package:flutter/material.dart';
import 'package:webinar_x/screens/home_screen.dart';
import 'package:webinar_x/screens/login_screen.dart';
import 'package:webinar_x/themes/colors.dart';

void main() async {
  runApp(const WebinarX());
}

class WebinarX extends StatelessWidget {
  const WebinarX({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WebinarX',
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
      ),
      routes: {
        '/Login': (context) => const LoginScreen(),
        '/Home': (context) => const HomeScreen(),
      },
      home: const LoginScreen(),
    );
  }
}
