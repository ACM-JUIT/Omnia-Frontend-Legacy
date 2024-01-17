import 'package:flutter/material.dart';
import 'package:omnia/Resources/Theme/theme.dart';

import 'package:readmore/readmore.dart';

class ACMDetailsPage extends StatefulWidget {
  final String heading;
  final String subheading;
  final String imageUrl;
  final String tenureDescription;

  const ACMDetailsPage(
      {Key? key,
      required this.heading,
      required this.subheading,
      required this.imageUrl,
      required this.tenureDescription})
      : super(key: key);

  @override
  State<ACMDetailsPage> createState() => _ACMDetailsPageState();
}

class _ACMDetailsPageState extends State<ACMDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: navColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(widget.imageUrl),
              const SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.heading,
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: ReadMoreText(
                          widget.tenureDescription,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                          trimLines: 5,
                          colorClickableText: navColor,
                          trimMode: TrimMode.Length,
                          trimCollapsedText: 'Read more',
                          trimExpandedText: 'Read less',
                          moreStyle: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                          lessStyle: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
