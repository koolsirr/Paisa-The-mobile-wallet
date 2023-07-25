import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paisa_majorproject/Screens/End_NavBar.dart';
import 'package:paisa_majorproject/Screens/NavBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/bg.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        drawer: NavBar(),
        endDrawer: EndNavBar(),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const CupertinoIconThemeData(
            color: Colors.black
          ),

        ),
      ),

    );
  }
}
