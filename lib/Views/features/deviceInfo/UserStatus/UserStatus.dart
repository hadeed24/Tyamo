import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:tyamo/Widgets/Common/BatteryInfo_container.dart';
import 'package:tyamo/Widgets/Common/logo_appbar.dart';

class UserStatus extends StatelessWidget {
  const UserStatus({super.key});

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
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Text(
                "Battery Status",
                style: GoogleFonts.nunito(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: const Color(0xFF00043D),
                ),
              ),
            ),
          ),
        
          Expanded(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(children: [
                  const Expanded(
                    child: Column(
                      children: [
                        Expanded(
                            child: BatteryInfoContainer(
                          subHeading: 'User Status',
                          Heading: 'Discharging',
                        )),
                        Expanded(
                            child: BatteryInfoContainer(
                          subHeading: 'Charging Type',
                          Heading: 'N/A',
                        )),
                      ],
                    ),
                  ),
                  const Expanded(
                      child: BatteryInfoContainer(
                    subHeading: 'Battery\nTechnology',
                    Heading: 'Li-Poly',
                  )),
                ]),
              ),
            ),
          ),
            SizedBox(
            height: 10,
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(children: [
                  const Expanded(
                    child: Column(
                      children: [
                        Expanded(
                            child: BatteryInfoContainer(
                          subHeading: 'User Status',
                          Heading: 'Discharging',
                        )),
                        Expanded(
                            child: BatteryInfoContainer(
                          subHeading: 'Charging Type',
                          Heading: 'N/A',
                        )),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            flex: 2,
                            child: BatteryInfoContainer(
                              subHeading: 'Charging\nPercentage',
                              Heading: 'Discharging',
                              SubWidget: SleekCircularSlider(
                                max: 70,
                                min: 0,
                                appearance: CircularSliderAppearance(
                                  customColors: CustomSliderColors(
                                    trackColor: const Color.fromARGB(
                                        255, 190, 190, 190),
                                    progressBarColor: const Color(0xFF00043D),
                                  ),
                                  size: 90,
                                  infoProperties: InfoProperties(
                                    mainLabelStyle: GoogleFonts.nunito(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20),
                                  ),
                                  customWidths:
                                      CustomSliderWidths(progressBarWidth: 10),
                                ),
                                initialValue: 55,
                              ),
                            ),
                          ),
                          const Expanded(
                              child: BatteryInfoContainer(
                            subHeading: 'Temperature',
                            Heading: '35.5',
                          )),
                        ]),
                  ),
                  const Expanded(
                    child: Column(
                      children: [
                        Expanded(
                            child: BatteryInfoContainer(
                          subHeading: 'Battery Health',
                          Heading: 'Good',
                        )),
                        Expanded(
                            child: BatteryInfoContainer(
                          subHeading: 'Battery\nTechnology',
                          Heading: 'Li-Poly',
                        )),
                      ],
                    ),
                  ),
                  RotatedBox(
                    quarterTurns:
                        1, // Rotate the text 270 degrees (90 degrees clockwise)
                    child: Text("My Battery Status",
                        style: GoogleFonts.nunito(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.white)),
                  )
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
