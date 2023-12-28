import 'package:flutter/material.dart';
import 'splash4.dart';

class Splash3 extends StatefulWidget {
  const Splash3({super.key});

  @override
  State<Splash3> createState() => _Splash3State();
}

class _Splash3State extends State<Splash3> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 1250), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Splash4(),
          settings: const RouteSettings(name: 'Splash 4'),
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
                      child: TweenAnimationBuilder<double>(
                          tween: Tween(begin: 0.0, end: 0.25),
                          duration: const Duration(milliseconds: 1500),
                          builder: (context, value, child) {
                            return Transform.rotate(
                              angle: value * 4 * 3.141, // quarter spin with some bounce
                              child: Transform.scale(
                                scale: 1 + value * 0.1, // slight bounce animation
                                child: child,
                              ),
                            );
                          },
                        child: Container(
                          width: 30,
                          height: 30,
                          // color: Colors.white,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 300,),
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


