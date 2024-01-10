import 'package:flutter/material.dart';
import 'package:omnia/Resources/Theme/theme.dart';
import 'package:omnia/Screens/Community/acm.dart';
import 'package:omnia/Screens/Community/members.dart';
// import 'package:omnia/Screens/Home/home.dart';
import 'package:omnia/Screens/Home/homescreen.dart';

class Community extends StatelessWidget {
  const Community({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: primaryColor,
            title: const Text(
              "Community",
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
              labelPadding: EdgeInsets.all(3),
              indicatorColor: itemColor,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 3.0,
              labelColor: Colors.white,
              tabs: [
                Tab(
                  text: "ACM",
                ),
                Tab(
                  text: "Members",
                ),
              ],
            ),
          ),
          backgroundColor: primaryColor,
          body: const TabBarView(
            children: [
              ACM(),
              Members(),
            ],
          )),
    );
  }
}
