import 'package:flutter/material.dart';
import 'package:omnia/Signup/Splash/splash5.dart';

class Splash4 extends StatefulWidget {
  const Splash4({super.key});

  @override
  State<Splash4> createState() => _Splash4State();
}

class _Splash4State extends State<Splash4> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 1250), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Splash5(),
          settings: const RouteSettings(name: 'Splash 5'),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Omnia',
                        style: TextStyle(
                          fontSize: 68,
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                        ),                        
                        ),
                        Hero(
                          tag: 'animatedElement', // Unique tag for the hero animation
                          child: Container(
                            width: 68,
                            height: 68,
                            // color: Colors.white,
                            decoration: const BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/wot.png")),
                              // color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                        ),
                      ],
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


