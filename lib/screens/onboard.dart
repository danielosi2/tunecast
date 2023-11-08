import 'package:flutter/material.dart';
import 'package:tunecast/widget/check_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 39, 39, 39),
        foregroundColor: Colors.white,
        title: const Text('Discover new music', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'Choose your favorite genres',
                style: TextStyle(fontSize: 21, color: Colors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12),
              CheckButton(),
              SizedBox(height: 8),
              CheckButton(),
              SizedBox(height: 8),
              CheckButton(),
              SizedBox(height: 8),
              CheckButton(),
            ],
          ),
        ),
      ),
    );
  }
}
