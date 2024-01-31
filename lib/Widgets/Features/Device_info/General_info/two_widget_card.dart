import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TwoWidgetCard extends StatelessWidget {
  const TwoWidgetCard({
    super.key,
    required this.subHeading1,
    required this.Heading1,
    this.SubWidget1,
    required this.subHeading2,
    required this.Heading2,
    this.SubWidget2,
  });
  final String subHeading1;
  final String Heading1;
  final Widget? SubWidget1;
  final String subHeading2;
  final String Heading2;
  final Widget? SubWidget2;
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
            Container(
              child: Column(
                children: [
                  Text(
                    subHeading1,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.w400, fontSize: 12),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SubWidget1 ??
                      Text(
                        Heading1,
                        style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w800, fontSize: 16),
                      )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(children: [
                Text(
                  subHeading2,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w400, fontSize: 12),
                ),
                const SizedBox(
                  height: 5,
                ),
                SubWidget2 ??
                    Text(
                      Heading2,
                      style: GoogleFonts.nunito(
                          fontWeight: FontWeight.w800, fontSize: 16),
                    )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
