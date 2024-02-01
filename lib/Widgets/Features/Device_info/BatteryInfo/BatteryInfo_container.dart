import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BatteryInfoContainer extends StatelessWidget {
  const BatteryInfoContainer(
      {super.key,
      required this.subHeading,
      required this.Heading,
      this.SubWidget,
      this.clr});
  final String subHeading;
  final String Heading;
  final Widget? SubWidget;
  final Color? clr;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      child: Card(
        elevation: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              subHeading,
              textAlign: TextAlign.center,
              style:
                  GoogleFonts.nunito(fontWeight: FontWeight.w500, fontSize: 12),
            ),
            SubWidget ??
                Text(
                  Heading,
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                      color: clr ?? Colors.black87),
                )
          ],
        ),
      ),
    );
  }
}
