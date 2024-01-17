import 'package:flutter/material.dart';
import 'package:omnia/Resources/Theme/theme.dart';
import 'package:omnia/Screens/Home/homescreen.dart';
import 'package:omnia/Screens/Work/projects.dart';
import 'package:omnia/Screens/Work/reso.dart';

class Work extends StatelessWidget {
  const Work({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            iconTheme: const IconThemeData(color: Colors.white),
            backgroundColor: primaryColor,
            title: const Text(
              "Work",
              style: TextStyle(color: Colors.white),
            ),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const HomeScreen();
                }));
              },
            ),
            bottom: const TabBar(
              // dividerColor: ,
              labelStyle: TextStyle(fontSize: 20),
              labelPadding: EdgeInsets.all(3),
              indicatorColor: itemColor,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 3.0,
              labelColor: Colors.white,
              tabs: [
                Tab(
                  text: "Projects",
                ),
                Tab(
                  text: "Resources",
                ),
              ],
            ),
          ),
          backgroundColor: primaryColor,
          body: const TabBarView(
            children: [
              Project(),
              Reso(),
            ],
          )),
    );
  }
}
