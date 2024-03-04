import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile(
      {super.key, required this.icon, required this.text, required this.ontap});

  final IconData icon;
  final String text;
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ontap;
      },
      child: ListTile(
        title: Container(
          alignment: Alignment.centerLeft,
          height: 40,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Icon(
                  icon,
                  size: 20,
                  color: const Color(0xFF00043D),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text(
                  text,
                  style: GoogleFonts.poppins(
                      color: const Color(0xFF00043D),
                      fontSize: 13,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
