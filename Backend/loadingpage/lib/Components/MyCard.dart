import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String tittle;
  final String txt;
  final double txtFZ;
  final double wd;
  final double hg;

  const MyCard(
      {super.key,
      required this.txt,
      required this.wd,
      required this.hg,
      required this.tittle,
      required this.txtFZ});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: wd,
      height: hg,
      child: Card(
        elevation: 5,
        shadowColor: Color(0xFFE0E2E5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Color(0xFFF5F5F4),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Text(
              tittle,
              style: TextStyle(
                  color: Color(0xFF292524), fontSize: 16, fontFamily: 'rdl2'),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(txt,
                  style: TextStyle(
                      color: Color(0xFF292524),
                      fontSize: txtFZ,
                      fontFamily: 'rdl2')),
            )
          ],
        ),
      ),
    );
  }
}
