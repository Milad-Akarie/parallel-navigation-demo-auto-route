import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text("Settings Page"),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Text("This is a root page"),
      ),
    );
  }
}
