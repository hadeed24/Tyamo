import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tyamo/Views/Invitation/invite_friend.dart';
import 'package:tyamo/Widgets/Common/logo_appbar.dart';

class AcceptInvite extends StatelessWidget {
  AcceptInvite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          flexibleSpace: const Center(child: LogoAppbar()),
          leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(
              Icons.arrow_back,
              color: Color(0xFF00043D),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 6.h,
            color: const Color(0xFF00043D),
            child: Text(
              "See received invitation",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontSize: 18.sp,
                letterSpacing: 1,
              ),
              textScaleFactor: 1,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            child: Card(
              color: Colors.white,
              elevation: 10,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: SizedBox(
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 20, 5, 15),
                          child: SizedBox(
                            height: 60,
                            width: 60,
                            child: CircularProfileAvatar(
                              // Make sure to replace "imageUrl" with the actual image URL or path
                              "",
                              backgroundColor: Colors.blue,
                              radius: 30, // Adjust the radius as needed
                            ),
                          ),
                        ),
                        // Add other widgets or components as needed
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5, bottom: 5),
                              child: Text(
                                "@Hadeed24",
                                style: GoogleFonts.poppins(fontSize: 17),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0, bottom: 0),
                              child: Text(
                                "Hadeed",
                                style: GoogleFonts.poppins(color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              GFButton(
                                color: Colors.green,
                                shape: GFButtonShape.pills,
                                onPressed: tests,
                                child: Text("Accept"),
                              ),
                              SizedBox(
                                width: 9,
                              ),
                              GFButton(
                                color: Colors.red,
                                shape: GFButtonShape.pills,
                                onPressed: tests,
                                child: Text("Decline"),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Spacer(),
          Center(
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 300,
              child: Image.asset("assets/images/invite_friend.png",
                  fit: BoxFit.contain),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Your received invitation are currently",
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 18.sp,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                "Empty",
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF00043D),
                  fontSize: 18.sp,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
