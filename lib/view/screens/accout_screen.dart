import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      backgroundColor: Theme.of(context).primaryColor,
      title:  const Text('Account'),
    ),
      body: const Center(
        child: Text("Account"),
      ),
    );
  }
}
