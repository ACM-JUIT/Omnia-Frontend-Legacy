import 'package:flutter/material.dart';
import 'package:omnia/Resources/Theme/theme.dart';
import 'package:omnia/Screens/Drawer/drawer.dart';
import 'package:omnia/Screens/Home/events.dart';
import 'package:omnia/cardvalues.dart';

import 'package:url_launcher/url_launcher_string.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  void _navigateToDetailsPage(String heading, String subheading,
      String imageUrl, String eventsDescription, String ytID) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsPage(
            heading: heading,
            subheading: subheading,
            imageUrl: imageUrl,
            eventsDescription: eventsDescription,
            ytID: ytID),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: primaryColor,
        title: Align(
          alignment: Alignment.centerLeft,
          child: Image.asset(
            "assets/name.png",
            height: 50,
          ),
        ),
        centerTitle: false,
      ),
      endDrawer: const CustomDrawer(),
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // verticalDirection: VerticalDirection.up,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  color: Colors.transparent,
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Upcoming Events",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 420,
                  width: 380,
                  decoration: BoxDecoration(
                    border: Border.all(color: itemColor),
                    borderRadius: BorderRadius.circular(10),
                    color: cardColor,
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Container(
                            height: 320,
                            width: 340,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                              color: imagebackColor,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10.0),
                                        child: Image.asset(
                                          homeImage,
                                          alignment: Alignment.center,
                                          fit: BoxFit.cover,
                                          width: double.infinity,
                                          height: double.infinity,
                                        ),
                                      ),
                                      // Align(
                                      //   alignment: Alignment.bottomCenter,
                                      //   child: Container(
                                      //     color: Colors.transparent,
                                      //     child: const SlideCountdown(
                                      //       duration: Duration(days: 1),
                                      //     ),
                                      //   ),
                                      // ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Tech-O-Ween",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        launchUrlString(registerUrl);
                                      },
                                      child: Container(
                                        height: 20,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: itemColor),
                                          borderRadius: BorderRadius.circular(6),
                                          color: dateColor,
                                        ),
                                        child: const Center(
                                          child: Text(
                                            "Register",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  "In October's spirit, screens ignite Coding, spooks, and thrills unit...",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Popular Events",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                reverse: false,
                itemCount: homeCardNo,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      _navigateToDetailsPage(
                        homeHeadings[index],
                        homeSubheadings[index],
                        homeImagesList[index],
                        eventsDescription[index],
                        ytID[index],
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(colors: [
                            gradientColor2,
                            gradientColor1,
                          ]),
                          border: Border.all(color: itemColor),
                          borderRadius: BorderRadius.circular(10),
                          color: cardColor,
                        ),
                        height: 120,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.asset(
                                      homeImagesList[index],
                                      alignment: Alignment.center,
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                      height: double.infinity,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          homeHeadings[index],
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          homeSubheadings[index],
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
