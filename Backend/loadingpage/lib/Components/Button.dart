import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String txt;
  final Function()? onTap;

  const Button({super.key, required this.onTap, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      height: 45,
      child: GestureDetector(
        onTap: onTap,
        child: Center(
          child: Container(
            width: 120,
            height: 60,
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Color(0xFF292524),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                txt,
                style: TextStyle(
                  color: Color(0xFFfafaf9),
                  fontFamily: 'rdl2',
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
