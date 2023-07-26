import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
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
              child: ClipOval(child: Image.asset('assets/images/pic.png')),
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
