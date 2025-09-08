import 'package:flutter/material.dart';
import 'package:women_safety/utils/items.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.onPressed,
    required this.index,
  });

  final VoidCallback onPressed;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed, // ✅ direct use, no widget.
      child: Container(
        
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        padding: const EdgeInsets.all(12),
        child: Center(
          child: Text(
            sweetSayings[index],
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
