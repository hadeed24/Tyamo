import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoardGradientFeature extends StatelessWidget {
  const DashBoardGradientFeature({
    super.key,
    required this.iconimg,
    required this.btnText, required this.widget,
  });
  final IconData iconimg;
  final String btnText;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => widget,
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero, backgroundColor: const Color(0xFF00043D),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 5,
        ),
        child: Container(
          height: 50,
          width: double.infinity,
          padding: const EdgeInsets.all(8.0),
          alignment: Alignment.center,
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
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
              ),
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
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: ElevatedButton(
        onPressed: () {
          // Add your button click logic here
        },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero, backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 5,
          shadowColor: Colors.grey,
        ),
        child: Container(
          height: 60,
          width: double.infinity,
          padding: const EdgeInsets.all(8.0),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                iconimg,
                size: 25,
                color: const Color(0xFF00043D),
              ),
              Flexible(
                child: Text(
                  btnText,
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF00043D),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
