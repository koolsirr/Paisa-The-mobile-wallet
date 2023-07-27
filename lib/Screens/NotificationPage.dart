import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paisa_majorproject/Screens/HomeScreen.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/bg.png'),fit: BoxFit.cover)
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
              elevation: 0,
              leading:
                Builder(
                    builder: (context) => IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                        },
                        icon: Icon(Icons.arrow_back_ios_rounded,color: Colors.black,))),
        ),
      ));
  }
}
