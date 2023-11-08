import 'package:flutter/material.dart';

class CheckButton extends StatefulWidget {
  const CheckButton({super.key});

  @override
  State<CheckButton> createState() => _CheckButtonState();
}

class _CheckButtonState extends State<CheckButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      height: 80,
      alignment: Alignment.center,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(28), border: Border.all(color: Colors.grey), color: const Color.fromARGB(255, 39, 39, 39)),
      child: Row(
        children: [
          Checkbox(
            value: true,
            onChanged: (value) {
              if (value == true) {
                setState(() {
                  value = false;
                });
              }
              if (value == false) {
                setState(() {
                  value = true;
                });
              }
            },
          ),
          const Text(
            'Explore daily recomendation',
            style: TextStyle(fontSize: 21, color: Colors.white, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
