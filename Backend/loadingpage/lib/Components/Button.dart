import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String txt;
  final Function()? onTap;

  const Button({super.key, required this.onTap, required this.txt});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Container(
          width: 100,
          height: 50,
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.symmetric(horizontal: 25),
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
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
