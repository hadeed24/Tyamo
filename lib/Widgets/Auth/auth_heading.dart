import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AuthHeading extends StatelessWidget {
  final String maintext;
  final String subtext;
  final String logo;
  final double fontSize;
  final double logoSize;
  final Color color;

  const AuthHeading(this.maintext, this.subtext, this.logo, this.logoSize,
      this.fontSize, this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 50,
        ),
        Row(
          children: [
            Text(
              maintext,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: fontSize.sp,
                color: color,
              ),
            ),
            const SizedBox(
              width: 2,
            ),
            SizedBox(
              width: logoSize.sp,
              height: logoSize.sp,
              child: Image.asset(
                logo,
                filterQuality: FilterQuality.high,
                color: const Color(0xff000221),
              ),
            ),
          ],
        ),
        Text(
          subtext,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: fontSize.sp,
            color:const Color(0xff000221),
          ),
        ),
      ],
    );
  }
}
