import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ChewieController chewieController;

  @override
  void initState() {
    super.initState();
    chewieController = ChewieController(
      autoInitialize: true,
      aspectRatio: 16 / 9,
      videoPlayerController: VideoPlayerController.asset('videos/setup.mp4'),
    );
  }

  @override
  void dispose() {
    chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chewie Video'),
      ),
      body: Chewie(
        controller: chewieController,
      ),
    );
  }
}
