import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tyamo/Views/features/deviceInfo/BatteryInfo/BetteryInfo.dart';
import 'package:tyamo/Views/features/deviceInfo/DeviceSpecs/DeviceSpec.dart';
import 'package:tyamo/Views/features/deviceInfo/General_Info/General_Info.dart';
import 'package:tyamo/Views/features/deviceInfo/LocationInfo/location_info.dart';
import 'package:tyamo/Views/features/deviceInfo/UserStatus/UserStatus.dart';
import 'package:tyamo/Widgets/Common/button_container.dart';
import 'package:tyamo/Widgets/Common/logo_appbar.dart';

class DeviceInfo extends StatelessWidget {
  const DeviceInfo({super.key});

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
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 6.h,
            color: const Color.fromARGB(255, 0, 4, 61),
            child: Text(
              "Device Info",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontSize: 18.sp,
                letterSpacing: 1,
              ),
            ),
          ),
          const SizedBox(height: 10),
           Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 6,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: ButtonContainer(
                              txt: "User Status", widget: UserStatus()),
                        ),
                      ),
                      const Expanded(
                        flex: 4,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: ButtonContainer(
                              txt: "Battery", widget: BatteryInfo()),
                        ),
                      )
                    ],
                  ),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 20),
                    child:
                        ButtonContainer(txt: "General", widget: GeneralInfo()),
                  ),
                )
              ],
            ),
          ),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: ButtonContainer(
                        txt: "Device Specs", widget: DeviceSpecs()),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 6,
                        child: Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: ButtonContainer(
                              txt: "Location", widget: LocationInfo()),
                        ),
                      ),
                      Expanded(
                        flex: 10,
                        child: Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: ButtonContainer(
                              txt: "Orientation", widget: LocationInfo()),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
