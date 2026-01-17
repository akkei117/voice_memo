import 'package:flutter/material.dart';
import 'package:voice_memo/features/ui/screens/intro_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Voice Memo",
      home: Introscreen(),
      
      routes: {
        //placeholder
      },
    );
  }
}

/*

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vibration/vibration.dart';
import 'package:voice_memo/pages/homescreen.dart';

class Introscreen extends StatefulWidget {
  const Introscreen({super.key});

  @override
  State<Introscreen> createState() => _IntroscreenState();
}

class _IntroscreenState extends State<Introscreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _fadeController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    // Fade-in animation (3 seconds)
    _fadeController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    _fadeAnimation = CurvedAnimation(
      parent: _fadeController,
      curve: Curves.easeIn,
    );

    _fadeController.forward();

    // Vibration for 2 seconds
    _startVibration();

    // Navigate after 5 seconds
    Timer(const Duration(seconds: 5), () {
      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => Homescreen()),
      );
    });
  }

  Future<void> _startVibration() async {
    if (await Vibration.hasVibrator()) {
      Vibration.vibrate(duration: 2000);
    }
  }

  @override
  void dispose() {
    _fadeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Center(
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: Column(
            mainAxisAlignment: .center,
            children: [
              Icon(Icons.mic_rounded, size: 250, color: Colors.black),
          
              Text(
                "Voice Memo",
                style: GoogleFonts.inter(fontSize: 50, fontWeight: .w600),
              ),
              Row(
                mainAxisAlignment: .spaceAround,
                children: [
                  SizedBox(),
                  Container(
                    decoration: BoxDecoration(
                      border: BoxBorder.all(
                        color: const Color.fromARGB(255, 17, 17, 17),
                        width: 1,
                  
                      ),
                      color: const Color.fromRGBO(255, 117, 31, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "By Sanidhya Malviya",
                        style: GoogleFonts.inter(fontSize: 16, fontWeight: .w600),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

*/