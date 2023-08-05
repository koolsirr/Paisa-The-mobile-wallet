import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paisa_majorproject/Screens/End_NavBar.dart';
import 'package:paisa_majorproject/Screens/NavBar.dart';
import 'package:paisa_majorproject/Screens/NotificationPage.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: NavBar(),
      endDrawer: EndNavBar(),
      appBar: AppBar(
        leading: Builder(
            builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: Icon(Icons.person))),
        actions: [
          Builder(
              builder: (context) => IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NotificationPage()));
                  },
                  icon: Icon(Icons.notifications))),
          Builder(
              builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  icon: Icon(Icons.more_vert_rounded))),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const CupertinoIconThemeData(color: Colors.black),
      ),
    );
  }
}
