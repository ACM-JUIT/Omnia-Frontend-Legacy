import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final String heading;
  final String subheading;
  final String imageUrl;

  const DetailsPage(
      {Key? key,
      required this.heading,
      required this.subheading,
      required this.imageUrl})
      : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.heading),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.subheading,
              style: const TextStyle(fontSize: 20),
            ),
            Image.asset(
              widget.imageUrl,
              height: 200,
              width: 200,
            ),
          ],
        ),
      ),
    );
  }
}
