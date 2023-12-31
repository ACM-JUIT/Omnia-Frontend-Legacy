import 'package:flutter/material.dart';
import 'package:omnia/Theme/theme.dart';

class Work extends StatelessWidget {
  const Work({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child:
            Text("Work", style: TextStyle(color: Colors.white, fontSize: 30)),
      ),
    );
  }
}
