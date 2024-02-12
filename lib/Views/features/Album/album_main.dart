import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:tyamo/Views/features/Album/people.dart';
import 'package:tyamo/Views/features/Album/myAlbum.dart';
import 'package:tyamo/Widgets/Common/logo_appbar.dart';

class AlbumMain extends StatefulWidget {
  const AlbumMain({super.key});

  @override
  State<AlbumMain> createState() => _AlbumMainState();
}

class _AlbumMainState extends State<AlbumMain>
    with SingleTickerProviderStateMixin {
  PageController pageController = PageController(initialPage: 0);
  List<IconData> Iconlist = [
    Icons.person,
    Icons.people,
  ];
  int page = 0;
  int pageView = 0;

  late Animation<double> animation;
  late AnimationController animationController;
  late CurvedAnimation curve;

  Widget packviewSection() {
    return PageView(
        controller: pageController,
        onPageChanged: (value) {
          setState(() {
            page = value;
          });
        },
        children: const [
          MyAlbum(),
          People(),
        ]);
  }

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    curve = CurvedAnimation(
        parent: animationController,
        curve: const Interval(0.5, 1, curve: Curves.fastOutSlowIn));
    animation = Tween<double>(begin: 0, end: 1).animate(curve);
    animationController.forward();
    super.initState();
  }

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
        floatingActionButton: ScaleTransition(
          scale: animation,
          child: FloatingActionButton(
            onPressed: () {
              animationController
                  .reset(); // Reset the animation to the beginning
              animationController.forward(); // Start the animation
            },
            shape: const CircleBorder(),
            splashColor: const Color(0xFF040A5A),
            elevation: 5,
            backgroundColor: const Color(0xFF00043D),
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: Iconlist,
          activeColor: const Color(0xFF00043D),
          activeIndex: page,
          splashSpeedInMilliseconds: 300,
          notchSmoothness: NotchSmoothness.softEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          gapLocation: GapLocation.center,
          onTap: (p0) {
            setState(() {
              pageView = p0;
              pageController.animateToPage(p0,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.linear);
            });
          },
        ),
        body: packviewSection());
  }
}
