import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

bool more = false;
String txt = "+ Show More";

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "MY PROFILE",
          style: GoogleFonts.nunito(
              fontSize: 22,
              color: Colors.black,
              fontWeight: FontWeight.w900,
              letterSpacing: 2),
        ),
        SizedBox(
          height: 40,
        ),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/doodle.png"),
                  fit: BoxFit.cover,
                  opacity: 0.1)),
          child: CircularProfileAvatar(
            "",
            radius: 80,
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
        SizedBox(
          height: 20,
        ),
        Text(
          "Abdul Hadeed",
          style: GoogleFonts.nunito(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          "@a.hadeed",
          style: GoogleFonts.nunito(
            fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            elevation: MaterialStateProperty.resolveWith<double>(
              (Set<MaterialState> states) {
                // Return the elevation value based on the button's state
                if (states.contains(MaterialState.pressed)) {
                  return 8.0; // Elevation when the button is pressed
                } else {
                  return 4.0; // Default elevation
                }
              },
            ),
            side: MaterialStateProperty.all<BorderSide>(
                BorderSide(color: Color(0xFF00043D))),
            backgroundColor: MaterialStateProperty.all<Color>(
                Color.fromARGB(255, 252, 252, 252)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Edit Profile Details",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600, color: Color(0xFF00043D)),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        CardDetailRow(
            type: "Email",
            clr: Colors.grey.shade200,
            icn: Icon(Icons.alternate_email),
            val: "hlell"),
        CardDetailRow(
            type: "Countery",
            clr: Colors.transparent,
            icn: Icon(Icons.flag),
            val: "hlell"),
        CardDetailRow(
            type: "Phone Number",
            clr: Colors.grey.shade200,
            icn: Icon(Icons.phone_android_rounded),
            val: "hlell"),
        more
            ? CardDetailRow(
                type: "Gender",
                clr: Colors.transparent,
                icn: Icon(FontAwesomeIcons.venusMars),
                val: "hlell")
            : Container(),
        more
            ? CardDetailRow(
                type: "Partner",
                clr: Colors.grey.shade200,
                icn: Icon(Icons.person_2_rounded),
                val: "hlell")
            : Container(),
        more
            ? CardDetailRow(
                type: "UID",
                clr: Colors.transparent,
                icn: Icon(Icons.biotech),
                val: "hlell")
            : Container(),
        more
            ? CardDetailRow(
                type: "Account Created",
                clr: Colors.grey.shade200,
                icn: Icon(Icons.create),
                val: "hlell")
            : Container(),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              more = !more;
            });
          },
          style: ButtonStyle(
            elevation: MaterialStateProperty.resolveWith<double>(
              (Set<MaterialState> states) {
                // Return the elevation value based on the button's state
                if (states.contains(MaterialState.pressed)) {
                  return 6.0; // Elevation when the button is pressed
                } else {
                  return 2.0; // Default elevation
                }
              },
            ),
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.grey.shade400),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              more ? "- Show Less" : "+ Show More",
              style: GoogleFonts.poppins(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color(0xff00043D),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              height: 150,
              width: 150,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Subscribed to",
                      style:
                          GoogleFonts.nunito(color: Colors.white, fontSize: 14),
                    ),
                    Text(
                      "Premium",
                      style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w900),
                    ),
                  ]),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xff00043D),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              height: 150,
              width: 150,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Subscribed on",
                      style:
                          GoogleFonts.nunito(color: Colors.white, fontSize: 14),
                    ),
                    Text(
                      "N/A",
                      style: GoogleFonts.nunito(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w900),
                    ),
                  ]),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class CardDetailRow extends StatelessWidget {
  final String type;
  final Color clr;
  final Icon icn;
  final String val;

  const CardDetailRow(
      {super.key,
      required this.type,
      required this.clr,
      required this.icn,
      required this.val});

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: clr,
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
        ),
        height: 50,
        width: double.infinity,
        child: Row(
          children: [
            SizedBox(
              width: 10,
              child: icn,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              type,
              textScaleFactor: 1,
              textAlign: TextAlign.left,
              style:
                  GoogleFonts.nunito(fontSize: 15, fontWeight: FontWeight.w500),
            ),
            Flexible(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  val,
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w700,
                      color: val == "Not Currently set"
                          ? Colors.red
                          : Colors.black),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
