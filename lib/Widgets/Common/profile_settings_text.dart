import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile_s_Heading extends StatelessWidget {
  const Profile_s_Heading({super.key, required this.txt});

  final String txt;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      alignment: Alignment.centerLeft,
      child: Text(
        txt,
        textAlign: TextAlign.left,
        style: GoogleFonts.nunito(
          fontWeight: FontWeight.w900,
          fontSize: 16,
          color: const Color(0xFF00043D),
        ),
      ),
    );
  }
}

class PR_setting_2nd_heading extends StatelessWidget {
  const PR_setting_2nd_heading(
      {super.key, required this.txt, this.Secondary_widget});
  final String txt;
  final Widget? Secondary_widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      color: Colors.transparent,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            txt,
            textAlign: TextAlign.left,
            style: GoogleFonts.nunito(
              fontSize: 15,
                fontWeight: FontWeight.w500, color: Colors.black),
          ),
          Secondary_widget ??
              const Icon(
                FontAwesomeIcons.arrowRight,
                size: 14,
              )
        ],
      ),
    );
  }
}
