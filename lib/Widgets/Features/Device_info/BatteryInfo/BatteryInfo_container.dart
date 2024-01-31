import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BatteryInfoContainer extends StatelessWidget {
  const BatteryInfoContainer(
      {super.key,
      required this.subHeading,
      required this.Heading,
      this.SubWidget});
  final String subHeading;
  final String Heading;
  final Widget? SubWidget;
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
                  GoogleFonts.nunito(fontWeight: FontWeight.w400, fontSize: 12),
            ),
            const SizedBox(
              height: 5,
            ),
            SubWidget ??
                Text(
                  Heading,
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w800, fontSize: 16),
                )
          ],
        ),
      ),
    );
  }
}
