import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class LogoAppbar_n extends StatelessWidget {
  const LogoAppbar_n({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
            width: 120,
            child: Image.asset(
              "assets/images/logo.png",
              fit: BoxFit.contain,
              color: Colors.white,
              filterQuality: FilterQuality.high,
            ),
          ),
        ],
      ),
    );
  }
}

TextStyle TS = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    color: Colors.white,
    fontSize: 15,
    letterSpacing: 2);
