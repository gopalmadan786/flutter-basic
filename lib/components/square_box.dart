import 'package:flutter/material.dart';

class SquareBox extends StatelessWidget {
  final Widget child;
  const SquareBox({
    super.key,
    required this.child
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey[200],
      ),
      child: child,
    );
  }
}