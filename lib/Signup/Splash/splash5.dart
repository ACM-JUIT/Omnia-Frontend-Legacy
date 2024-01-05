import 'package:flutter/material.dart';
import 'package:omnia/Signup/signuppagewolf.dart';

class Splash5 extends StatefulWidget {
  const Splash5({super.key});

  @override
  State<Splash5> createState() => _Splash5State();
}

class _Splash5State extends State<Splash5> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 2000), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const SignupAnimate(),
          settings: const RouteSettings(name: 'Sign Tap'),
        ),
      );
    });
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // scrolledUnderElevation: double.infinity,
        // elevation: 0.0,
        // forceMaterialTransparency: true,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        height: 1864,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: Container(
          color: Colors.black.withOpacity(0.3),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Omnia',
                    style: TextStyle(
                      fontSize: 80,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Hero(
                      tag:
                          'animatedElement', // Unique tag for the hero animation
                      child: Text(
                        'Together we are strong',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w800),
                      )),
                ],
              ),
              const SizedBox(
                height: 240,
              ),
              Container(
                height: 76,
                width: 148,
                // constraints: BoxConstraints.tight(Size(98,51)),
                // transformAlignment: AlignmentDirectional.bottomCenter,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  alignment: Alignment.bottomCenter,
                  image: AssetImage("assets/acmlogo.png"),
                  // fit: BoxFit.scaleDown,
                )),
              ),
              const SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
