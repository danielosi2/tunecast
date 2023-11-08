import 'package:flutter/material.dart';
import 'package:tunecast/screens/home_page.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Text(
                'Choose your favorite genres',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 21, color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              const CheckButton(label: 'Explore daily recommendations'),
              const SizedBox(height: 7),
              const CheckButton(label: 'Get weekly update'),
              const SizedBox(height: 7),
              const CheckButton(label: 'Listen to sport podcast'),
              const SizedBox(height: 7),
              const CheckButton(label: 'Stay Updated with buiness news'),
              const SizedBox(height: 7),
              const CheckButton(label: 'Explore cultural content'),
              const SizedBox(height: 28),
              SizedBox(
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ));
                  },
                  style: const ButtonStyle(
                    foregroundColor: MaterialStatePropertyAll<Color>(Colors.black),
                    backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Start Listening',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
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
