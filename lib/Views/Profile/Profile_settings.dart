import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo/Widgets/Common/profile_settings_text.dart';

class profile_setting extends StatelessWidget {
  const profile_setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Container(
                height: 330,
                decoration: BoxDecoration(
                  color: Color(0xFF00043D),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(
                        MediaQuery.of(context).size.width, 130),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.settings,
                          color: Colors.white,
                          size: 23,
                        ),
                        SizedBox(
                          width: 05,
                        ),
                        Text(
                          "Setting",
                          style: GoogleFonts.nunito(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.w900),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Card(
                      color: Colors.white,
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              child: Row(
                                children: [
                                  CircularProfileAvatar(
                                    "",
                                    radius: 30,
                                    imageFit: BoxFit.contain,
                                    backgroundColor: Colors.cyan,
                                    elevation: 5,
                                    borderWidth: 1,
                                    borderColor: Color(0xFF00043D),
                                    cacheImage: true,
                                    errorWidget: (context, url, error) {
                                      return Icon(
                                        Icons.face,
                                        size: 20,
                                      );
                                    },
                                    onTap: () {},
                                    animateFromOldImageOnUrlChange: true,
                                    placeHolder: (context, url) {
                                      return Container(
                                        child: Center(
                                          child: CircularProgressIndicator(),
                                        ),
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Abdul Hadeed",
                                    style: GoogleFonts.nunito(
                                        letterSpacing: 0.5,
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              height: 5,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Profile_s_Heading(txt: "Profile Setting"),
                            PR_setting_2nd_heading(txt: "Edit Name"),
                            PR_setting_2nd_heading(txt: "Edit Phone Number"),
                            PR_setting_2nd_heading(txt: "Change Password"),
                            PR_setting_2nd_heading(
                              txt: "Email Status",
                              Secondary_widget: Row(
                                children: [
                                  Text(
                                    "not verified",
                                    style: GoogleFonts.nunito(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.red),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.arrowRight,
                                    size: 14,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Profile_s_Heading(txt: "Notification Setting"),
                            SizedBox(
                              height: 10,
                            ),
                            PR_setting_2nd_heading(
                              txt: "Pust Notification",
                              Secondary_widget: GFToggle(
                                onChanged: (val) {},
                                enabledTrackColor: Color(0xFF00043D),
                                type: GFToggleType.android,
                                value: true,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Profile_s_Heading(txt: "Application Setting"),
                            SizedBox(
                              height: 10,
                            ),
                            PR_setting_2nd_heading(
                              txt: "Background Status",
                              Secondary_widget: Row(
                                children: [
                                  Text(
                                    "not verified",
                                    style: GoogleFonts.nunito(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.red),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.arrowRight,
                                    size: 14,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
