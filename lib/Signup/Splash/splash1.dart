import 'package:flutter/material.dart';
import 'package:omnia/Signup/Splash/splash2.dart';

class Splash1 extends StatefulWidget {
  const Splash1({super.key});

  @override
  State<Splash1> createState() => _Splash1State();
}

class _Splash1State extends State<Splash1> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 1250), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Splash2(),
          settings: const RouteSettings(name: 'Splash 2'),
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
                    Hero(
                      tag: 'animatedElement', // Unique tag for the hero animation
                      child: Container(
                        width: 125,
                        height: 125,
                        // color: Colors.white,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 240,),
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
                        )
                      ),
                      ),
                      const SizedBox(height: 100,)
                  ],
                                ),
                ),
              ),
              
                
            
        
    );
  }
}


