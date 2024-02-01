import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo/Widgets/Common/logo_appbar.dart';

class LocationInfo extends StatelessWidget {
  const LocationInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        flexibleSpace: const Center(child: LogoAppbar()),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF00043D),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Location Status",
                        style: GoogleFonts.nunito(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            color: const Color(0xFF00043D)),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Card(
                      color: Colors.white,
                      elevation: 10,
                      child: SizedBox(
                        width: double.infinity,
                        height: 130,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_pin,
                                size: 50,
                                color: Color(0xFF00043D),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Flexible(
                                child: Text(
                                  "North Loop, West Farway, Northside, Hyderabad",
                                  style: TextStyle(
                                      color: Color(0xFF00043D),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Card(
                      color: Colors.white,
                      elevation: 10,
                      child: Container(
                        alignment: Alignment.center,
                        width: 160,
                        height: 50,
                        child: const Text(
                          "Pakistan",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Color(0xFF00043D),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Last Updated: 1 min ago",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF00043D),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color(0xFF00043D),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "My Location Status",
                        style: GoogleFonts.nunito(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Card(
                      color: Color(0xFF00043D),
                      elevation: 10,
                      child: SizedBox(
                        width: double.infinity,
                        height: 130,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_pin,
                                size: 50,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Flexible(
                                child: Text(
                                  "North Loop, West Farway, Northside, Hyderabad",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Card(
                      color: const Color(0xFF00043D),
                      elevation: 10,
                      child: Container(
                        alignment: Alignment.center,
                        width: 160,
                        height: 50,
                        child: const Text(
                          "Pakistan",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Last Updated: 1 min ago",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
