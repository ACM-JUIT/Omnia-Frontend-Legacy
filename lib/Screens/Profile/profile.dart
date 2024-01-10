import 'package:flutter/material.dart';
import 'package:omnia/Resources/Theme/theme.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
            iconTheme: const IconThemeData(color: Colors.white),
            backgroundColor: primaryColor,
            title: const Text(
              "My Profile",
              style: TextStyle(color: Colors.white),
            ),
      ),
      backgroundColor: primaryColor,
      body: Placeholder(),
    );
  }
}
