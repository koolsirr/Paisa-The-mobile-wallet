import 'package:flutter/material.dart';
import 'package:paisa_majorproject/Screens/HomeScreen.dart';
import 'package:paisa_majorproject/Screens/NotificationPage.dart';
import 'package:paisa_majorproject/Screens/PhoneNumber.dart';
import 'package:paisa_majorproject/Screens/VerificationPage.dart';
import 'package:paisa_majorproject/Screens/WelcomeScreen.dart';
import 'Screens/LoginScreen.dart';
import 'Screens/RegisterScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'welcome',
        routes: {
          'welcome': (context) => const WelcomeScreen(),
          'login': (context) => const LoginScreen(),
          'register': (context) => const RegisterScreen(),
          'home': (context) => const HomeScreen(),
          'notification':(context) => const NotificationPage(),
          'phone' :(context) => const PhoneNumber(),
          'verify':(context) => const VerificationPage(),
        });
  }
}
