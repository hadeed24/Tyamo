import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo/Views/Profile/profile_page.dart';
import 'package:tyamo/Views/homepage/dashboard.dart';
import 'package:tyamo/Views/homepage/drawer_ListTile.dart';
import 'package:tyamo/Widgets/Common/logo_appbar.dart';

final GlobalKey<ScaffoldState> _homapagekey = GlobalKey();

class DashboardHomepage extends StatefulWidget {
  const DashboardHomepage({super.key});

  @override
  State<DashboardHomepage> createState() => _DashboardHomepageState();
}

class _DashboardHomepageState extends State<DashboardHomepage> {
  List<IconData> Iconlist = [
    FontAwesomeIcons.circleUser,
    FontAwesomeIcons.house,
    FontAwesomeIcons.bell
  ];

  int page = 1;
  int pageView = 1;

  Widget packviewSection() {
    return PageView(
      controller: pageController,
      onPageChanged: (value) {
        setState(() {
          page = value;
        });
      },
      children: [
        const SingleChildScrollView(child: ProfilePage()),
        const SingleChildScrollView(child: DashBoard()),
        Container(
          color: Colors.green,
        ),
      ],
    );
  }

  PageController pageController = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _homapagekey,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          elevation: 0,
          title: const LogoAppbar(),
          backgroundColor: Colors.white,
          leading: GestureDetector(
            onTap: () {
              _homapagekey.currentState!.openDrawer();
            },
            child: const Icon(
              Icons.menu,
              color: Color(0xFF00043D),
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                FontAwesomeIcons.commentDots,
                color: Color(0xFF00043D),
              ),
            )
          ],
        ),
      ),
      drawer: GFDrawer(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Expanded(
                flex: 0,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 17,
                          ),
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
                            onTap: () {
                              pageController.animateToPage(0,
                                  duration: const Duration(milliseconds: 200),
                                  curve: Curves.linear);
                              Navigator.of(context).pop();
                            },
                            animateFromOldImageOnUrlChange: true,
                            placeHolder: (context, url) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            },
                          ),
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Abdul Hadeed",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: const Color(0xFF00043D),
                                    letterSpacing: 1),
                              ),
                              Text(
                                "abdulhadeed@gmail.com",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                                    color:
                                        const Color.fromARGB(255, 73, 73, 73),
                                    fontSize: 12,
                                    letterSpacing: 0),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: Expanded(
                flex: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                      decoration: BoxDecoration(
                        color: const Color(0xFF00043D),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        "Premium",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Expanded(
              flex: 0,
              child: Divider(
                color: Color.fromARGB(255, 209, 209, 209),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                DrawerListTile(
                  icon: FontAwesomeIcons.solidCreditCard,
                  text: "Subscription",
                  ontap: () {},
                ),
                DrawerListTile(
                  icon: Icons.settings,
                  text: "Setting",
                  ontap: () {},
                ),
                DrawerListTile(
                  icon: FontAwesomeIcons.solidCircleQuestion,
                  text: "Help",
                  ontap: () {},
                ),
                DrawerListTile(
                  icon: FontAwesomeIcons.solidMessage,
                  text: "Feedback",
                  ontap: () {},
                ),
                DrawerListTile(
                  icon: FontAwesomeIcons.share,
                  text: "Tell Others",
                  ontap: () {},
                ),
                DrawerListTile(
                  icon: FontAwesomeIcons.starHalfStroke,
                  text: "Rate the App",
                  ontap: () {},
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Divider(),
                  DrawerListTile(
                      icon: FontAwesomeIcons.rightFromBracket,
                      text: "Sign Out",
                      ontap: () {}),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: Iconlist,
        activeColor: const Color(0xFF00043D),
        activeIndex: page,
        splashSpeedInMilliseconds: 300,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        gapLocation: GapLocation.none,
        onTap: (p0) {
          setState(() {
            pageView = p0;
            pageController.animateToPage(p0,
                duration: const Duration(milliseconds: 200), curve: Curves.linear);
          });
        },
      ),
      body: packviewSection(),
    );
  }
}
