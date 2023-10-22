import 'package:flutter/material.dart';

class LogoLogin extends StatelessWidget {
  final String imagePath;
  const LogoLogin({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFE0E2E5)),
        borderRadius: BorderRadius.circular(16),
        color: Color(0xFFf5f5f4),
      ),
      child: Image.asset(
        imagePath,
        width: 30,
        height: 30,
      ),
    );
  }
}
