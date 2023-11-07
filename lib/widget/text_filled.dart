import 'package:flutter/material.dart';

class CustomTextFilled extends StatefulWidget {
  const CustomTextFilled({super.key, required this.hint});

  final String hint;

  @override
  State<CustomTextFilled> createState() => _CustomTextFilledState();
}

class _CustomTextFilledState extends State<CustomTextFilled> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        filled: true,
        hintStyle: const TextStyle(color: Colors.white60),
        hintText: widget.hint,
        fillColor: Colors.white30,
      ),
    );
  }
}
