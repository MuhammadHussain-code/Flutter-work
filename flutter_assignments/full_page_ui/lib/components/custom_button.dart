import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.icon, this.isBackground = false});

  final String text;
  final IconData icon;
  final bool isBackground;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.all(10),
        backgroundColor: isBackground ? const Color(0xFFF83758) : Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        side: BorderSide(color: isBackground ? Colors.transparent : Colors.white),
      ),
      onPressed: () {},
      label: Text(text,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
      icon: Icon(
        icon,
        size: 25,
        color: Colors.white,
      ),
      iconAlignment: IconAlignment.end,
    );
  }
}