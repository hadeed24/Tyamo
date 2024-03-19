import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Auth_text_fields extends StatelessWidget {
  final bool obscuretext;
  final TextInputType keyboardinput;
  final IconData icon;
  final double lablesize;
  final double fontsize;
  final double iconsize;
  final String lable;
  final TextEditingController controller;

  const Auth_text_fields(this.obscuretext, this.icon, this.fontsize, this.iconsize,
      this.keyboardinput, this.lablesize, this.lable, {super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      textAlign: TextAlign.start,
      obscureText: obscuretext,
      autofocus: false,
      keyboardType: keyboardinput,
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        fillColor:const Color(0xffE7E7F7),
        filled: true,
        prefixIcon: Icon(
          icon,
          size: iconsize.sp,
        ),
        label: Text(lable,
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, fontSize: fontsize.sp)),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        labelStyle: GoogleFonts.poppins(
            fontWeight: FontWeight.w500, fontSize: lablesize.sp),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
