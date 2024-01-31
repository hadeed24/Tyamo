import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class oneValueCard extends StatelessWidget {
  const oneValueCard({
    super.key, required this.txt,
  });
final String txt;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black26,
      height: 160,
      width: 160,
      child: Card(
        elevation: 10,
        color: Colors.white,
        child: Center(
          child: Column(children: [
            Expanded(
                child: Align(
              alignment: Alignment.center,
              child: Text(
                txt,
                style: GoogleFonts.nunito(
                    fontSize: 15,
                    fontWeight: FontWeight.w900,
                    color: const Color(0xFF00043D)),
              ),
            ))
          ]),
        ),
      ),
    );
  }
}
