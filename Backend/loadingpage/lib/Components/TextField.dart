import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 365,
      height: 45,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: const Color(0xFFE0E2E5)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: const Color(0xFFE0E2E5)),
              ),
              fillColor: Color(0xFFf5f5f4),
              filled: true,
              contentPadding: EdgeInsets.all(8),
              hintText: hintText,
              hintStyle: TextStyle(
                  color: Color(0xFF292524), fontFamily: 'rdl', fontSize: 12)),
          style: TextStyle(color: Color(0xFF292524)),
        ),
      ),
    );
  }
}
