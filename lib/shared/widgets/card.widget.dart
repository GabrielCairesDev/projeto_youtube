import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.onTap, required this.title});

  final VoidCallback onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        width: double.infinity,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.blueAccent.withValues(alpha: .8),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(title, style: TextStyle(color: Colors.white, fontSize: 18)),
      ),
    );
  }
}
