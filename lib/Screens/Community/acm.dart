import 'package:flutter/material.dart';
import 'package:omnia/Resources/Theme/theme.dart';
import 'package:omnia/Screens/Community/acmevents.dart';
import 'package:omnia/cardvalues.dart';

class ACM extends StatefulWidget {
  const ACM({Key? key}) : super(key: key);

  @override
  State<ACM> createState() => _ACMState();
}

class _ACMState extends State<ACM> {
  // Function to navigate to the details page with the selected card's data
  void _navigateToDetailsPage(String heading, String subheading,
      String imageUrl, String tenureDescription) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ACMDetailsPage(
            heading: heading,
            subheading: subheading,
            imageUrl: imageUrl,
            tenureDescription: tenureDescription),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 220,
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
                            image: AssetImage(acmLogo),
                            color: itemColor,
                            height: 35,
                            width: 100,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            acmDescription,
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
              ListView.builder(
                shrinkWrap: true,
                itemCount: acmCardNo,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      _navigateToDetailsPage(
                        acmSubheadings[index],
                        acmHeadings[index],
                        tenureImages[index],
                        tenureDescription[index],
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
                                      tenureImages[index],
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
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
