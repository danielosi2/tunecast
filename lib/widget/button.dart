import 'package:flutter/material.dart';

class FixedButton extends StatelessWidget {
  const FixedButton({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: ElevatedButton(
        onPressed: () {},
        style: const ButtonStyle(
          foregroundColor: MaterialStatePropertyAll<Color>(Colors.black),
          backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
