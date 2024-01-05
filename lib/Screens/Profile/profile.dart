import 'package:flutter/material.dart';
import 'package:omnia/Theme/theme.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Text("Profile",
            style: TextStyle(color: Colors.white, fontSize: 30)),
      ),
    );
  }
}
