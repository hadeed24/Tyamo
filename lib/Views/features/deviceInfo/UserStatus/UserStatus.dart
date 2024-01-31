import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo/Views/features/deviceInfo/UserStatus/onevaluecard.dart';
import 'package:tyamo/Widgets/Features/Device_info/BatteryInfo/BatteryInfo_container.dart';
import 'package:tyamo/Widgets/Common/logo_appbar.dart';

class UserStatus extends StatefulWidget {
  UserStatus({super.key});

  @override
  State<UserStatus> createState() => _UserStatusState();
}

class _UserStatusState extends State<UserStatus> {
  List<String> status = [
    'Away',
    'Do not disturb',
    'Driving',
    'Eating',
    'Meeting',
    'Outdoor',
    'Sleeping',
    'Working'
  ];

  List<String> status2 = ['Meeting', 'Outdoor', 'Sleeping', 'Working'];

  String selected_status = '';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Text(
                  "Friend Status",
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
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(children: [
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                              child: BatteryInfoContainer(
                            subHeading: 'User Status',
                            Heading: 'Online',
                          )),
                          Expanded(
                              child: BatteryInfoContainer(
                            subHeading: 'Last App Action',
                            Heading: '2 mins ago',
                          )),
                        ],
                      ),
                    ),
                    Expanded(
                        child: BatteryInfoContainer(
                      subHeading: 'User Status',
                      Heading: 'Driving',
                    )),
                  ]),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Last Updated: 1 min ago",
              style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Color(0xFF00043D),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40))),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                  child: ListView.builder(
                    itemCount: status.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selected_status = status[index];
                              });
                            },
                            child: oneValueCard(
                              txt: status[index],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selected_status = status2[index];
                              });
                            },
                            child: oneValueCard(
                              txt: status2[index],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
