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
        children: const [
          ListTile(
            leading: Icon(Icons.upload),
            title: Text('upload'),
          )
        ],
      ),
    );
  }
}
