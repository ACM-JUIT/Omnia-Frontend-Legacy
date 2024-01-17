import 'package:flutter/material.dart';
import 'package:omnia/Resources/Theme/theme.dart';
import 'package:omnia/Screens/Home/homescreen.dart';

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
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const HomeScreen();
              }));
            },
          ),
        ),
        backgroundColor: primaryColor,
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(
                height: 16,
              ),

              Container(
                height: 120,
                width: 120,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image:
                        DecorationImage(image: AssetImage("assets/luffy.png"))),
              ),
              const SizedBox(
                height: 10,
              ),

              //Name
              const Text(
                'Monkey D. Luffy',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 4,
              ),

              //ID TAG
              const Text(
                '@nika',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              const SizedBox(
                height: 8,
              ),

              //Social ID Links
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 24,
                    width: 24,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/linky.png"))),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Container(
                    height: 24,
                    width: 24,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/gitboi.png"))),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Container(
                    height: 24,
                    width: 24,
                    decoration: const BoxDecoration(
                        image:
                            DecorationImage(image: AssetImage("assets/x.png"))),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),

              //Bio shi
              const Text(
                'I am Going to be the King of the Pirates.\nI am not a hero. I will not share my food.\nBring me MEAT.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),

              //Portfolio ig
            ],
          ),
        ));
  }
}
