import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tyamo/Views/Invitation/accept_invite.dart';
import 'package:tyamo/Widgets/Common/logo_appbar.dart';

class Invitefriend extends StatelessWidget {
  const Invitefriend({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set the background color to white

      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          flexibleSpace: Center(child: LogoAppbar()),
          leading: null,
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  AcceptInvite(),
                  ),
                );
              },
              child: const Padding(
                padding: EdgeInsets.only(right: 16.0),
                child: Icon(
                  Icons.person_outlined,
                  color: Color.fromARGB(255, 0, 4, 61),
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 6.h,
              color: const Color.fromARGB(255, 0, 4, 61),
              child: Text(
                "Find your friend",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontSize: 18.sp,
                  letterSpacing: 1,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 3,
                              blurRadius: 10)
                        ],
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsetsDirectional.symmetric(
                                vertical: 25, horizontal: 20),
                            hintText: "Hi!, Type a username",
                            hintStyle: TextStyle(
                                color: Colors.grey,
                                fontFamily: "Nunito",
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color.fromARGB(255, 0, 4, 61),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 3,
                            blurRadius: 10)
                      ],
                    ),
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              
              height: 40.h,
              child: Image.asset("assets/images/invite_friend.png",
                  fit: BoxFit.contain),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Search for your friend on Tyamo or invite your friend to Tyamo",
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                fontSize: 18.sp,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFF00043D)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Invite a friend",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void tests() {}
