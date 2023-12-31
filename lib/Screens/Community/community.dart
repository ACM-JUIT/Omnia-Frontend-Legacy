import 'package:flutter/material.dart';
import 'package:omnia/Screens/Community/acm.dart';
import 'package:omnia/Screens/Community/members.dart';
import 'package:omnia/Theme/theme.dart';

class Community extends StatelessWidget {
  const Community({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.white),
            backgroundColor: primaryColor,
            title: const Text(
              "Community",
              style: TextStyle(color: Colors.white),
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
