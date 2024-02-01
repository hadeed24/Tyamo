import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo/Views/features/deviceInfo/Device_info.dart';
import 'package:tyamo/Views/homepage/dashboard_gradient_feature.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
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
            const SizedBox(
              height: 5,
            ),
            Container(
              padding: const EdgeInsets.only(left: 25),
              alignment: Alignment.centerLeft,
              child: Text(
                "Your Friend",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    color: const Color(0xFF00043D),
                    letterSpacing: 2),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: double.infinity,
              child: Card(
                elevation: 7,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
                            child: CircularProfileAvatar(
                              "",
                              radius: 40,
                              imageFit: BoxFit.contain,
                              backgroundColor: Colors.cyan,
                              elevation: 5,
                              borderWidth: 1,
                              borderColor: const Color(0xFF00043D),
                              cacheImage: true,
                              errorWidget: (context, url, error) {
                                return const Icon(
                                  Icons.face,
                                  size: 50,
                                );
                              },
                              onTap: () {},
                              animateFromOldImageOnUrlChange: true,
                              placeHolder: (context, url) {
                                return const Center(
                                  child: CircularProgressIndicator(),
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
                                      const Icon(
                                        Icons.fiber_manual_record,
                                        color: Colors.grey,
                                        size: 18,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Abdul Hadeed",
                                        style: GoogleFonts.nunito(
                                            fontSize: 16,
                                            color: const Color(0xFF00043D),
                                            fontWeight: FontWeight.w800),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Icon(
                                        Icons.location_on,
                                        color: Colors.black,
                                        size: 18,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Text(
                                          "B-22, Herabad sadar, abdullah mall, Pakistan",
                                          style: GoogleFonts.nunito(
                                              fontSize: 12,
                                              color: const Color(0xFF00043D),
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
                      Padding(
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
                                        color: const Color(0xFF00043D),
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
                                color: const Color(0xFF00043D),
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
                                        color: const Color(0xFF00043D),
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
                                color: const Color(0xFF00043D),
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
                                        color: const Color(0xFF00043D),
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
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                    child: DashBoardGradientFeature(
                  iconimg: Icons.phone_iphone,
                  btnText: 'Device Info',
                  widget: DeviceInfo(),
                )),
                Flexible(
                    child: DashBoardGradientFeature(
                  iconimg: Icons.image,
                  btnText: 'Gallery',
                  widget: DeviceInfo(),
                )),
                Flexible(
                    child: DashBoardGradientFeature(
                  iconimg: Icons.mood,
                  btnText: 'Mood',
                  widget: DeviceInfo(),
                )),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(left: 25),
              alignment: Alignment.centerLeft,
              child: Text(
                "Our Feature",
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    color: const Color(0xFF00043D),
                    letterSpacing: 2),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
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
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
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
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
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
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
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
            const SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}
