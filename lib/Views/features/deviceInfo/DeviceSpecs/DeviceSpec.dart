import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo/Widgets/Common/logo_appbar.dart';
import 'package:tyamo/Widgets/Features/Device_info/BatteryInfo/BatteryInfo_container.dart';

class DeviceSpecs extends StatelessWidget {
  const DeviceSpecs({super.key});

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Device Specification",
                style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    color: const Color(0xFF00043D)),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: BatteryInfoContainer(
                              subHeading: "Total Ram",
                              Heading: "5.36 GB",
                              clr: Color(0xFF00043D)),
                        ),
                        Expanded(
                          flex: 2,
                          child: BatteryInfoContainer(
                              subHeading: "Refresh Rate",
                              Heading: "60 Hz",
                              clr: Color(0xFF00043D)),
                        ),
                        Expanded(
                          flex: 3,
                          child: BatteryInfoContainer(
                              subHeading: "Fingerprint Sensor",
                              Heading: "Present",
                              clr: Color(0xFF00043D)),
                        ),
                        Expanded(
                          flex: 3,
                          child: BatteryInfoContainer(
                            subHeading: "Fingerprint Sensor",
                            Heading: "Yes",
                            clr: Color(0xFF00043D),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: BatteryInfoContainer(
                              subHeading: "Internal Memory",
                              Heading: "59.35/112 GB",
                              clr: Color(0xFF00043D)),
                        ),
                        Expanded(
                          child: BatteryInfoContainer(
                              subHeading: "External Memory",
                              Heading: "N/A",
                              clr: Color(0xFF00043D)),
                        ),
                        Expanded(
                          child: BatteryInfoContainer(
                              subHeading: "Screen Size",
                              Heading: "6.06 In",
                              clr: Color(0xFF00043D)),
                        ),
                        Expanded(
                          child: BatteryInfoContainer(
                              subHeading: "Resolution",
                              Heading: "1920x1080",
                              clr: Color(0xFF00043D)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
