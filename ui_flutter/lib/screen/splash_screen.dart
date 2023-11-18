import 'package:flutter/material.dart';
import 'main_app.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg3.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          child: Center(
              child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MainApp(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                minimumSize: const Size(150, 50),
                backgroundColor: const Color(0xFFE8E8E8)),
            child: const Text(
              'Get Started',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          )),
        ),
      ],
    );
  }
}
