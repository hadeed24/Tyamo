import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo/Views/homepage/dashboard_gradient_feature.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Text(
            "DASHBOARD",
            textAlign: TextAlign.center,
            style: GoogleFonts.nunito(
                fontSize: 22,
                fontWeight: FontWeight.w900,
                color: Colors.black,
                letterSpacing: 2),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          padding: EdgeInsets.only(left: 25),
          alignment: Alignment.centerLeft,
          child: Text(
            "Your Friend",
            textAlign: TextAlign.center,
            style: GoogleFonts.nunito(
                fontSize: 18,
                fontWeight: FontWeight.w900,
                color: Color(0xFF00043D),
                letterSpacing: 2),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          width: double.infinity,
          child: Card(
            elevation: 7,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(25, 25, 25, 0),
                        child: CircularProfileAvatar(
                          "",
                          radius: 40,
                          imageFit: BoxFit.contain,
                          backgroundColor: Colors.cyan,
                          elevation: 5,
                          borderWidth: 1,
                          borderColor: Color(0xFF00043D),
                          cacheImage: true,
                          errorWidget: (context, url, error) {
                            return Icon(
                              Icons.face,
                              size: 50,
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
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30, right: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.fiber_manual_record,
                                    color: Colors.grey,
                                    size: 18,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Abdul Hadeed",
                                    style: GoogleFonts.nunito(
                                        fontSize: 16,
                                        color: Color(0xFF00043D),
                                        fontWeight: FontWeight.w800),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.black,
                                    size: 18,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "B-22, Herabad sadar, abdullah mall, Pakistan",
                                      style: GoogleFonts.nunito(
                                          fontSize: 12,
                                          color: Color(0xFF00043D),
                                          fontWeight: FontWeight.w800),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Status",
                                  style: GoogleFonts.nunito(
                                      fontSize: 12,
                                      color: Color(0xFF00043D),
                                      fontWeight: FontWeight.w800),
                                ),
                                Text(
                                  "Offline",
                                  style: GoogleFonts.nunito(
                                      fontSize: 14,
                                      color: Colors.red,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                            width: 1,
                            child: Container(
                              color: Color(0xFF00043D),
                            ),
                          ),
                          Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "User Status",
                                  style: GoogleFonts.nunito(
                                      fontSize: 12,
                                      color: Color(0xFF00043D),
                                      fontWeight: FontWeight.w800),
                                ),
                                Text(
                                  "N/A",
                                  style: GoogleFonts.nunito(
                                      fontSize: 14,
                                      color: Colors.red,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                            width: 1,
                            child: Container(
                              color: Color(0xFF00043D),
                            ),
                          ),
                          Flexible(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Mood",
                                  style: GoogleFonts.nunito(
                                      fontSize: 12,
                                      color: Color(0xFF00043D),
                                      fontWeight: FontWeight.w800),
                                ),
                                Text(
                                  "N/A",
                                  style: GoogleFonts.nunito(
                                      fontSize: 14,
                                      color: Colors.red,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(
                child: DashBoardGradientFeature(
              iconimg: Icons.phone_iphone,
              btnText: 'Device Info',
            )),
            Flexible(
                child: DashBoardGradientFeature(
              iconimg: Icons.image,
              btnText: 'Gallery',
            )),
            Flexible(
                child: DashBoardGradientFeature(
              iconimg: Icons.mood,
              btnText: 'Mood',
            )),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.only(left: 25),
          alignment: Alignment.centerLeft,
          child: Text(
            "Our Feature",
            textAlign: TextAlign.center,
            style: GoogleFonts.nunito(
                fontSize: 18,
                fontWeight: FontWeight.w900,
                color: Color(0xFF00043D),
                letterSpacing: 2),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: [
              Flexible(
                  child: BtmDashBoardGradientFeature(
                      iconimg: FontAwesomeIcons.play, btnText: "Playlist")),
              Flexible(
                  child: BtmDashBoardGradientFeature(
                      iconimg: FontAwesomeIcons.locationPin,
                      btnText: "Location")),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: [
              Flexible(
                  child: BtmDashBoardGradientFeature(
                      iconimg: FontAwesomeIcons.listCheck,
                      btnText: "To-do List")),
              Flexible(
                  child: BtmDashBoardGradientFeature(
                      iconimg: FontAwesomeIcons.book, btnText: "Diary")),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: [
              Flexible(
                  child: BtmDashBoardGradientFeature(
                      iconimg: FontAwesomeIcons.solidNoteSticky,
                      btnText: "Suprise Notes")),
              Flexible(
                  child: BtmDashBoardGradientFeature(
                      iconimg: FontAwesomeIcons.moon, btnText: "Horoscope")),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: [
              Flexible(
                  child: BtmDashBoardGradientFeature(
                      iconimg: FontAwesomeIcons.houseMedical,
                      btnText: "To-do List")),
              Flexible(
                  child: BtmDashBoardGradientFeature(
                      iconimg: FontAwesomeIcons.book, btnText: "Diary")),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        )
      ],
    );
  }
}
