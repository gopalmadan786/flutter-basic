import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {
  final bool obsecure;
  final String hintText;
  final TextEditingController controller;

  const TextFieldComponent({
    super.key,
    required this.obsecure,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obsecure,
        decoration: InputDecoration(
          isDense: true,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade300)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400)
          ),
          fillColor: Colors.grey.shade100,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey[500],
          )
        ),
        style: const TextStyle(
          fontSize: 14,
        ),
      ),
    );
  }
}