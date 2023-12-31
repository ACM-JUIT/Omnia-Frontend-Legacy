import 'package:flutter/material.dart';
import 'package:omnia/Theme/theme.dart';

class Members extends StatefulWidget {
  const Members({super.key});

  @override
  State<Members> createState() => _MembersState();
}

class _MembersState extends State<Members> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      child: const Center(
        child: Text(
          "Members",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
  }
}
