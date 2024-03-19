import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tyamo/Interfaces/Auth/login_services.dart';
import 'package:tyamo/Views/Auth/Register.dart';
import 'package:tyamo/Views/Auth/forgot_password.dart';
import 'package:tyamo/Views/Invitation/invite_friend.dart';
import 'package:tyamo/Widgets/Auth/auth_heading.dart';
import 'package:tyamo/Widgets/Auth/auth_text_fields.dart';
import 'package:tyamo/Widgets/Common/logo_appbar_normail.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();

  final LoginSerivces loginservices = LoginSerivces();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: const Center(child: LogoAppbar_n()),
        backgroundColor: const Color(0xff000221),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              const AuthHeading(
                  "Sign In to Tyamo",
                  "To connect with\nyour partner",
                  "assets/images/icon.png",
                  18,
                  18,
                  Color(0xff000221)),
              const SizedBox(
                height: 50,
              ),
              Auth_text_fields(
                false,
                Icons.alternate_email,
                16,
                16,
                TextInputType.emailAddress,
                16,
                "Email",
                controller: loginservices.emailController,
              ),
              const SizedBox(
                height: 20,
              ),
              Auth_text_fields(
                true,
                Icons.password,
                16,
                16,
                TextInputType.visiblePassword,
                16,
                "Password",
                controller: loginservices.passwordController,
              ),
              const SizedBox(
                height: 30,
              ),
              Hero(
                tag: "Auth",
                child: RoundedLoadingButton(
                  width: 2000,
                  borderRadius: 10,
                  color: const Color(0xff000221),
                  controller: _btnController,
                  onPressed: () async {
                    Timer(const Duration(seconds: 1), () {
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
                  child: Text("Login",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 15.sp,
                          letterSpacing: 1.sp,
                          color: Colors.white)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        child: Forgot_password(),
                      ),
                    );
                  },
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.redAccent, fontSize: 15.sp),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Dont have an account?",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15.sp,
                        color: const Color(0xff5A5B5B)),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            child: Register(),
                          ),
                        );
                      },
                      child: Text(
                        " Sign Up",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15.sp,
                          color: const Color.fromRGBO(2, 160, 245, 1),
                        ),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
