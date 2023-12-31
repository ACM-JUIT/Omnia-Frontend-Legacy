import 'package:flutter/material.dart';
import 'package:omnia/Theme/theme.dart';

class MainHome extends StatelessWidget {
  const MainHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: primaryColor,
        title: Image.asset(
          "assets/name.png",
          // fit: BoxFit.values[1],
          height: 50,
        ),
        centerTitle: true,
      ),
      backgroundColor: primaryColor,
      endDrawer: const Drawer(
        shadowColor: Colors.amberAccent,
        backgroundColor: navColor,
      ),
      body: const Center(
        child: Text("MainHome",
            style: TextStyle(color: Colors.white, fontSize: 30)),
      ),
    );
  }
}
