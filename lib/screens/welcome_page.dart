import 'package:flutter/material.dart';

class WelcomScreen extends StatelessWidget {
  const WelcomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Discover new music',
              style: TextStyle(fontSize: 32, color: Colors.white),
            ),
            const Text(
              'Explore a vast collection',
              style: TextStyle(color: Colors.white),
            ),
            const Text(
              'of music and podcast',
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 35),
            Image.asset(
              'asset/images/sammy-52.png',
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: 300,
              height: 55,
              child: ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll<Color>(Colors.white),
                  backgroundColor: MaterialStatePropertyAll<Color>(Colors.deepPurple),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Get Started",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account? ',
                  style: TextStyle(color: Colors.white),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Sign in',
                    style: TextStyle(color: Colors.deepPurple),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
