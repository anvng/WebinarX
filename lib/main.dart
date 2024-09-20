import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:webinar_x/screens/home_screen.dart';
import 'package:webinar_x/screens/login_screen.dart';
import 'package:webinar_x/screens/video_call_screen.dart';
import 'package:webinar_x/services/auth_method.dart';
import 'package:webinar_x/themes/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        '/VideoCall': (context) => const VideoCallScreen(),
      },
      home: StreamBuilder(
        stream: AuthMethod().authChanges,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasData) {
            return const HomeScreen();
          }

          return const LoginScreen();
        },
      ),
    );
  }
}
