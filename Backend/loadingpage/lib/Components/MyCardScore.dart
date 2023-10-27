import 'package:flutter/material.dart';

class MyCardScore extends StatelessWidget {
  final String tittle;
  final double? wd;
  final double? hg;

  const MyCardScore({
    super.key,
    required this.wd,
    required this.hg,
    required this.tittle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Color(0xFFE0E2E5), offset: Offset(4, 4), blurRadius: 1)
          ],
          gradient:
              LinearGradient(colors: [Color(0xFF86EFAC), Color(0xFFfafaf9)])),
      width: wd,
      height: hg,
      child: Stack(
        children: [
          Column(
            children: [
              const SizedBox(height: 5),
              Container(
                alignment: AlignmentDirectional.center,
                child: Text(
                  tittle,
                  style: TextStyle(
                      color: Color(0xFF19725D),
                      fontSize: 16,
                      fontFamily: 'rdl2'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
