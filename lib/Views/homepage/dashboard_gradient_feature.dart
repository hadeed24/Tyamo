import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoardGradientFeature extends StatelessWidget {
  const DashBoardGradientFeature({
    super.key,
    required this.iconimg,
    required this.btnText,
  });
  final IconData iconimg;
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.grey, offset: Offset(0.0, 3.0), blurRadius: 3),
          ],
          color: Color(0xFF00043D),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                iconimg,
                size: 30,
                color: Colors.white,
              ),
              Flexible(
                child: Text(
                  btnText,
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w200, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BtmDashBoardGradientFeature extends StatelessWidget {
  const BtmDashBoardGradientFeature({
    super.key,
    required this.iconimg,
    required this.btnText,
  });
  final IconData iconimg;
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15 ,),
      child: Container(
        alignment: Alignment.center,
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.grey, offset: Offset(0.0, 3.0), blurRadius: 5),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                iconimg,
                size: 25,
                color: Color(0xFF00043D),
              ),
              Flexible(
                child: Text(
                  btnText,
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w700, color: Color(0xFF00043D)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
