import 'package:flutter/material.dart';
import 'package:video_trial/home_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chewie Video',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
