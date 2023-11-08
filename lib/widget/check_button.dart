import 'package:flutter/material.dart';

class CheckButton extends StatefulWidget {
  const CheckButton({super.key, required this.label});

  final String label;

  @override
  State<CheckButton> createState() => _CheckButtonState();
}

class _CheckButtonState extends State<CheckButton> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      height: 75,
      alignment: Alignment.center,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(28), border: Border.all(color: Colors.grey), color: const Color.fromARGB(255, 39, 39, 39)),
      child: Row(
        children: [
          Checkbox(
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
          Expanded(
            child: Text(
              widget.label,
              style: const TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
