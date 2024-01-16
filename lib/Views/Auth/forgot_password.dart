import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tyamo/Widgets/Auth/auth_heading.dart';
import 'package:tyamo/Widgets/Auth/auth_text_fields.dart';
import 'package:tyamo/Widgets/Common/logo_appbar_normail.dart';

class Forgot_password extends StatelessWidget {
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();

  void loginbt() {
    print("HELLO");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white), // Set the color here

        flexibleSpace: Center(child: LogoAppbar_n()),
        backgroundColor: Color(0xff000221),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(children: [
            const SizedBox(
              height: 30,
            ),
            AuthHeading("Forgort Password?", "", "assets/images/icon.png", 16,
                18, const Color(0xff000221)),
            Container(
              height: 20.h,
              width: 40.w,
              child: Image.asset(
                "assets/images/reset_password.png",
                color: Color(0xff000221),
                filterQuality: FilterQuality.high,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "To request a new one, type your email address below. A link to reset will be sent on that email.",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: 40,
            ),
            Auth_text_fields(false, Icons.alternate_email, 15, 15,
                TextInputType.emailAddress, 15, "Email"),
            const SizedBox(
              height: 40,
            ),
            Hero(
              tag: "Auth",
              child: RoundedLoadingButton(
                width: 2000,
                borderRadius: 10,
                color: const Color.fromARGB(255, 0, 4, 61),
                controller: _btnController,
                onPressed: loginbt,
                child: Text("SEND",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 15.sp,
                        letterSpacing: 4,
                        color: Colors.white)),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
