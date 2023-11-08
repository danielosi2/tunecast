import 'package:flutter/material.dart';
import 'package:tunecast/screens/home_page.dart';
import 'package:tunecast/widget/button.dart';
import 'package:tunecast/widget/text_filled.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const Text(
                  'Log in',
                  style: TextStyle(fontSize: 32, color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 80),
                const CustomTextFilled(hint: 'Email'),
                const SizedBox(height: 13),
                const CustomTextFilled(hint: 'Password'),
                const SizedBox(height: 11),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(onTap: () {}, child: const Text('Forgot password?', style: TextStyle(color: Colors.deepPurple))),
                  ],
                ),
                const SizedBox(height: 30),
                SizedBox(
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    },
                    style: const ButtonStyle(
                      foregroundColor: MaterialStatePropertyAll<Color>(Colors.white),
                      backgroundColor: MaterialStatePropertyAll<Color>(Colors.deepPurple),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Login",
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
                const SizedBox(height: 40),
                const Text(
                  'Or sign in with',
                  style: TextStyle(color: Colors.white54, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 25),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
