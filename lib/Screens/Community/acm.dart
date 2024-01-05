import 'package:flutter/material.dart';
import 'package:omnia/cardvalues.dart';
import 'package:omnia/Theme/theme.dart';

class ACM extends StatefulWidget {
  const ACM({Key? key}) : super(key: key);

  @override
  State<ACM> createState() => _ACMState();
}

class _ACMState extends State<ACM> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 320,
                width: 380,
                decoration: BoxDecoration(
                  border: Border.all(color: itemColor),
                  borderRadius: BorderRadius.circular(10),
                  color: cardColor,
                ),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Image(
                          image: AssetImage("assets/acmlogo.png"),
                          color: itemColor,
                          height: 35,
                          width: 100,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "What is ACM? organized by JUIT, is the ultimate cybersecurity showdown where digital defenders come together to test their mettle, showcasing their skills and knowledge. It's a vibrant platform where students and professionals dive into the challenges of the digital age, participating in competitions, workshops, and expert talks. Hache is the hub for cybersecurity enthusiasts to learn, collaborate, and",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: acmCardNo,
                itemBuilder: (context, index) {
                  return Padding(
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
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                alignment: Alignment.center,
                                color: Colors.transparent,
                                child: const Icon(
                                  Icons.image,
                                  color: imageColor,
                                  size: 40.0,
                                )),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    acmSubheadings[index],
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    acmHeadings[index],
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
