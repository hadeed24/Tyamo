import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tyamo/Views/Invitation/invite_friend.dart';
import 'package:tyamo/Widgets/Common/logo_appbar.dart';
import 'package:tyamo/Widgets/Auth/auth_text_fields.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class Profile_setup extends StatefulWidget {
  const Profile_setup({super.key});

  @override
  State<Profile_setup> createState() => _Profile_setupState();
}

class _Profile_setupState extends State<Profile_setup> {
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();

  void loginbt() {
  }

  bool isMale = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          elevation: 0,
          title: const LogoAppbar(),
          backgroundColor: Colors.white,
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/profile_setup_bg.png"),
          filterQuality: FilterQuality.high,
          opacity: 0.075,
        )),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 6.h,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFF00043D),
              ),
              child: Text("Profile Setup",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 15.sp,
                      letterSpacing: 2)),
            ),
            const SizedBox(
              height: 60,
            ),
            CircularProfileAvatar(
              '',
              radius: 50, // sets radius, default 50.0
              backgroundColor: const Color.fromARGB(255, 0, 4, 61),
              initialsText: Text(
                "+",
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ), // sets initials text, set your own style, default Text('')
              elevation:
                  5.0, // sets elevation (shadow of the profile picture), default value is 0.0
            ),
            const SizedBox(
              height: 60,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Auth_text_fields(
                  false, Icons.face, 15, 15, TextInputType.text, 15, "Name"),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Auth_text_fields(false, Icons.keyboard, 15, 15,
                  TextInputType.text, 15, "Username"),
            ),
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = true;
                    });
                  },
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: isMale
                          ? Colors.white
                          : const Color.fromARGB(255, 0, 4, 61),
                      shape: BoxShape.circle,
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromARGB(255, 179, 179, 179),
                            offset: Offset(1, 5),
                            blurRadius: 20)
                      ],
                    ),
                    child: Icon(
                      Icons.male,
                      color: isMale
                          ? const Color.fromARGB(255, 0, 4, 61)
                          : Colors.white,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = false;
                    });
                  },
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: !isMale
                          ? Colors.white
                          : const Color.fromARGB(255, 0, 4, 61),
                      shape: BoxShape.circle,
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromARGB(255, 179, 179, 179),
                            offset: Offset(1, 5),
                            blurRadius: 20)
                      ],
                    ),
                    child: Icon(
                      Icons.female,
                      color: !isMale
                          ? const Color.fromARGB(255, 0, 4, 61)
                          : Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Hero(
                tag: "Auth",
                child: RoundedLoadingButton(
                  width: 250,
                  borderRadius: 10,
                  color: const Color(0xff000221),
                  controller: _btnController,
                  onPressed: () async {
                    Timer(const Duration(seconds: 3), () {
                      _btnController.success();

                      Navigator.pushReplacement(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          child: const Invitefriend(),
                        ),
                      );
                    });
                  },
                  child: Text("NEXT",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          letterSpacing: 4,
                          color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
