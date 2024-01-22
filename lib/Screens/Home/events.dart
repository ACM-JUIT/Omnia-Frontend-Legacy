import 'package:flutter/material.dart';
import 'package:omnia/Resources/Theme/theme.dart';
import 'package:omnia/cardvalues.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:readmore/readmore.dart';

class DetailsPage extends StatefulWidget {
  final String heading;
  final String subheading;
  final String imageUrl;
  final String eventsDescription;
  final String ytID;

  const DetailsPage({
    Key? key,
    required this.heading,
    required this.subheading,
    required this.imageUrl,
    required this.eventsDescription,
    required this.ytID,
  }) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: _extractVideoId(widget.ytID),
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    );
  }

  String _extractVideoId(String url) {
    final Uri uri = Uri.parse(url);
    return YoutubePlayer.convertUrlToId(uri.toString()) ?? '';
  }

  @override
  Widget build(BuildContext context) {
    int index = ytID.indexOf(widget.ytID);

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
                          widget.eventsDescription,
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
                      AspectRatio(
                        aspectRatio: 16 / 9,
                        child: widget.ytID.isNotEmpty
                            ? YoutubePlayer(
                                controller: _controller,
                                showVideoProgressIndicator: true,
                                progressIndicatorColor: Colors.blueAccent,
                              )
                            : Image.asset(
                                eventImages[index],
                                fit: BoxFit.cover,
                                height:
                                    MediaQuery.of(context).size.height * 0.3,
                              ),
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
