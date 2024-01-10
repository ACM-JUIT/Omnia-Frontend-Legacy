import 'package:flutter/material.dart';

class ACMDetailsPage extends StatelessWidget {
  final String heading;
  final String subheading;
  final String imageUrl;

  const ACMDetailsPage(
      {Key? key,
      required this.heading,
      required this.subheading,
      required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(heading),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              subheading,
              style: const TextStyle(fontSize: 20),
            ),
            Image.asset(
              imageUrl,
              height: 200,
              width: 200,
            ),
          ],
        ),
      ),
    );
  }
}
