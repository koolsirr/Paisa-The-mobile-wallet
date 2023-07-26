import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EndNavBar extends StatefulWidget {
  const EndNavBar({super.key});

  @override
  State<EndNavBar> createState() => _EndNavBarState();
}

class _EndNavBarState extends State<EndNavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Bishal Manandhar',
                style: TextStyle(color: Colors.black)),
            accountEmail: const Text(
              "Email.com",
              style: TextStyle(color: Colors.black),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                  child: Image.asset(
                'assets/images/pic.png',
              )),
            ),
            decoration: const BoxDecoration(color: Colors.transparent),
          ),
          const ListTile(
            leading: Icon(Icons.upload),
            title: Text('upload'),
          )
        ],
      ),
    );
  }
}
