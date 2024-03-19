import 'dart:async';

import 'package:achievement_view/achievement_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:tyamo/Controller/UserController/user_controller.dart';
import 'package:tyamo/Interfaces/Auth/register_services.dart';
import 'package:tyamo/Views/Auth/Login.dart';
import 'package:tyamo/Views/Profile/profile_setup.dart';
import 'package:tyamo/Widgets/Auth/auth_heading.dart';
import 'package:tyamo/Widgets/Auth/auth_text_fields.dart';
import 'package:tyamo/Widgets/Common/logo_appbar_normail.dart';

class Register extends StatelessWidget {
  Register({super.key});
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();

  RegisterSerivces registerSerivces = RegisterSerivces();

  void loginbt() {}

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
          child: Column(children: [
            const AuthHeading(
                "Sign Up to Tyamo",
                "Get connected with\nyour partner",
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
              controller: registerSerivces.emailController,
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
              controller: registerSerivces.passwordController,
            ),
            const SizedBox(
              height: 30,
            ),
            Auth_text_fields(
              true,
              Icons.lock_reset,
              16,
              16,
              TextInputType.visiblePassword,
              16,
              "Confirm Password",
              controller: registerSerivces.confirmPasswordController,
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
                  if (registerSerivces.passwordController.text ==
                      registerSerivces.confirmPasswordController.text) {
                    print("OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO");
                    UserController().userRegister(
                        registerSerivces.emailController.text,
                        registerSerivces.passwordController.text);
                    AchievementView(
                        title: "Success",
                        subTitle: "Account have been registered",
                        color: Colors.green,
                        //content: Widget()
                        //onTab: _onTabAchievement,
                        icon: const Icon(
                          Icons.insert_emoticon,
                          color: Colors.white,
                        ),
                        //typeAnimationContent: AnimationTypeAchievement.fadeSlideToUp,
                        //borderRadius: 5.0,
                        //color: Colors.blueGrey,
                        //textStyleTitle: TextStyle(),
                        //textStyleSubTitle: TextStyle(),
                        //alignment: Alignment.topCenter,
                        //duration: Duration(seconds: 3),
                        //isCircle: false,
                        listener: (status) {
                          print(status);
                          //AchievementState.opening
                          //AchievementState.open
                          //AchievementState.closing
                          //AchievementState.closed
                        }).show(context);
                  } else {
                    AchievementView(
                        title: "Error",
                        subTitle: "Password does not match",
                        color: Colors.redAccent,
                        icon: const Icon(
                          Icons.sentiment_very_dissatisfied,
                          color: Colors.white,
                        ),
                        listener: (status) {
                          print(status);
                          //AchievementState.opening
                          //AchievementState.open
                          //AchievementState.closing
                          //AchievementState.closed
                        }).show(context);
                  }

                  /* Timer(const Duration(seconds: 1), () {
                    _btnController.success();

                    Navigator.pushReplacement(
                      context,
                      PageTransition(
                        type: PageTransitionType.fade,
                        child: Profile_setup(),
                      ),
                    );
                  }); */
                },
                child: Text("Register",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 15.sp,
                        letterSpacing: 1,
                        color: Colors.white)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "By registering. You are agree to our terms & conditions",
                style: TextStyle(
                    color: const Color.fromARGB(255, 64, 64, 64),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already registered?",
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
                        child: Login(),
                      ),
                    );
                  },
                  child: Text(
                    " Sign In",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15.sp,
                      color: const Color.fromRGBO(2, 160, 245, 1),
                    ),
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
