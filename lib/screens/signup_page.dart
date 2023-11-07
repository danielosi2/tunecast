import 'package:flutter/material.dart';
import 'package:tunecast/widget/button.dart';
import 'package:tunecast/widget/text_filled.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Welcome !',
                  style: TextStyle(fontSize: 32, color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Sign up to discover and enjoy',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const Text(
                  'All the best music and podcast',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                const CustomTextFilled(hint: 'username'),
                const SizedBox(height: 12),
                const CustomTextFilled(hint: 'email'),
                const SizedBox(height: 12),
                const CustomTextFilled(hint: 'password'),
                const SizedBox(height: 12),
                const CustomTextFilled(hint: 'confirm password'),
                const SizedBox(height: 20),
                SizedBox(
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
                          "Join now",
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
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Or sign up with',
                  style: TextStyle(color: Colors.white54, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 25),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FixedButton(label: 'Google'),
                    FixedButton(label: 'Facebook'),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
