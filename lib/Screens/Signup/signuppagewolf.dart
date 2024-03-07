import 'package:flutter/material.dart';
import 'package:omnia/Screens/Signup/signup.dart';

class SignupAnimate extends StatefulWidget {
  const SignupAnimate({super.key});

  @override
  State<SignupAnimate> createState() => _SignupState();
}

class _SignupState extends State<SignupAnimate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 1864,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/wolf.png"),
          fit: BoxFit.cover,
        )),
        child: Container(
          color: Colors.black.withOpacity(0.3),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 300,
              ),
              Column(
                children: [
                  // SizedBox(height: 60,),
                  TextButton.icon(
                      style: const ButtonStyle(
                        alignment: Alignment.center,
                        iconSize: MaterialStatePropertyAll<double>(75),
                        foregroundColor:
                            MaterialStatePropertyAll<Color>(Colors.white),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Signup(),
                            settings: const RouteSettings(name: 'Signup'),
                          ),
                        );
                      },
                      icon: const Icon(Icons.touch_app),
                      label: const Text('')),
                  const Text(
                    'Tap',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 100,
              ),
              Container(
                height: 76,
                width: 148,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/acmlogo.png"),
                )),
              ),
              // SizedBox(height: 60,)
            ],
          ),
        ),
      ),
    );
  }
}
