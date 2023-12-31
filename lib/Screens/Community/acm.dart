import 'package:flutter/material.dart';
import 'package:omnia/Theme/theme.dart';

class ACM extends StatefulWidget {
  const ACM({super.key});

  @override
  State<ACM> createState() => _ACMState();
}

class _ACMState extends State<ACM> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      child: const Center(
        child: Text(
          "ACM",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
  }
}
