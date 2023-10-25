import 'package:flutter/material.dart';

class MyCardGreen extends StatelessWidget {
  final String tittle;
  final double? wd;
  final double? hg;
  final String img;
  final double? wdimg;
  final double? hgimg;

  const MyCardGreen(
      {super.key,
      required this.wd,
      required this.hg,
      required this.tittle,
      required this.img,
      this.wdimg,
      this.hgimg});

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
                padding: EdgeInsets.only(left: 20),
                alignment: AlignmentDirectional.topStart,
                child: Text(
                  tittle,
                  style: TextStyle(
                      color: Color(0xFF292524),
                      fontSize: 16,
                      fontFamily: 'rdl2'),
                ),
              ),
              Image.asset(
                img,
                width: wdimg,
                height: hgimg,
              )
            ],
          ),
        ],
      ),
      // child: Card(
      //   elevation: 5,
      //   shadowColor: Color(0xFFE0E2E5),
      //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      //   color: Colors.transparent,
      //   child:
      // ),
    );
  }
}
