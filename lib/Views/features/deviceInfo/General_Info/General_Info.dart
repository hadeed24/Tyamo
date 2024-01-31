import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo/Widgets/Features/Device_info/BatteryInfo/BatteryInfo_container.dart';
import 'package:tyamo/Widgets/Common/logo_appbar.dart';
import 'package:tyamo/Widgets/Features/Device_info/General_info/two_widget_card.dart';

class GeneralInfo extends StatelessWidget {
  const GeneralInfo({super.key});

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
                child: Row(children: [
                  RotatedBox(
                    quarterTurns:
                        3, // Rotate the text 270 degrees (90 degrees clockwise)
                    child: Text("General Info",
                        style: GoogleFonts.nunito(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: const Color(0xFF00043D))),
                  ),
                  const Expanded(
                    child: Column(
                      children: [
                        Expanded(
                            flex: 1,
                            child: BatteryInfoContainer(
                              subHeading: 'Screen Status',
                              Heading: 'UNLOCKED',
                            )),
                        Expanded(
                          flex: 2,
                          child: TwoWidgetCard(
                            subHeading1: 'System Volumn',
                            Heading1: '7/10',
                            subHeading2: 'Media Volumn',
                            Heading2: '5/10',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                              child: Column(children: [
                            Expanded(
                              flex: 2,
                              child: TwoWidgetCard(
                                subHeading1: 'Light Activity',
                                Heading1: 'Dim light',
                                subHeading2: 'Light Intensity',
                                Heading2: '4',
                              ),
                            ),
                            Expanded(
                                flex: 1,
                                child: BatteryInfoContainer(
                                  subHeading: 'Brigtness',
                                  Heading: '5.88%',
                                )),
                          ]))
                        ]),
                  ),
                ]),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(children: [
                  const Expanded(
                    child: Column(
                      children: [
                        Expanded(
                            flex: 1,
                            child: BatteryInfoContainer(
                              subHeading: 'Screen Status',
                              Heading: 'UNLOCKED',
                            )),
                        Expanded(
                          flex: 2,
                          child: TwoWidgetCard(
                            subHeading1: 'System Volumn',
                            Heading1: '7/10',
                            subHeading2: 'Media Volumn',
                            Heading2: '5/10',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                              child: Column(children: [
                            Expanded(
                              flex: 2,
                              child: TwoWidgetCard(
                                subHeading1: 'Light Activity',
                                Heading1: 'Dim light',
                                subHeading2: 'Light Intensity',
                                Heading2: '4',
                              ),
                            ),
                            Expanded(
                                flex: 1,
                                child: BatteryInfoContainer(
                                  subHeading: 'Brigtness',
                                  Heading: '5.88%',
                                )),
                          ]))
                        ]),
                  ),
                  RotatedBox(
                      quarterTurns:
                          1, // Rotate the text 270 degrees (90 degrees clockwise)
                      child: Text("My General Info",
                          style: GoogleFonts.nunito(
                              letterSpacing: 2,
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              color: Colors.white))),
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
