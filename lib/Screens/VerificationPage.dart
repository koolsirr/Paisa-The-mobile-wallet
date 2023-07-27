import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paisa_majorproject/Screens/LoginScreen.dart';
import 'package:paisa_majorproject/Screens/WelcomeScreen.dart';
import 'package:quickalert/quickalert.dart' show QuickAlert, QuickAlertType;

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  void showAlert() {
    QuickAlert.show(
      context: context,
      text: 'Account Created',
      type: QuickAlertType.success,
      onConfirmBtnTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LoginScreen()));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bg.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text('Verification page',style: TextStyle(color: Colors.black),),
          leading: Builder(
              builder: (context) => IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WelcomeScreen()));
                  },
                  icon: const Icon(CupertinoIcons.back))),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    showAlert();
                  },
                  child: const Text("Procced"))
            ],
          ),
        ),
      ),
    );
  }
}
