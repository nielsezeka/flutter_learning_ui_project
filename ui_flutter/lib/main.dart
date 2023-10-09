import 'package:flutter/material.dart';
import 'package:ui_flutter/screen/splash_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Tutorial',
      home: SafeArea(
        child: Scaffold(body: SplashScreen()),
      ),
    ),
  );
}


