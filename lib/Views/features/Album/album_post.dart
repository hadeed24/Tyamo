import 'package:flutter/material.dart';
import 'package:flutter_balloon_slider/flutter_balloon_slider.dart';
import 'package:getwidget/getwidget.dart';
import 'dart:ui' as prefix0;

import 'package:google_fonts/google_fonts.dart';

class AlbumPost extends StatelessWidget {
  const AlbumPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
                child: Container(
                  width: double.infinity,
                  height: 490,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://images.pexels.com/photos/11650554/pexels-photo-11650554.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                        fit: BoxFit.cover),
                  ),
                  child: BackdropFilter(
                    filter: prefix0.ImageFilter.blur(sigmaX: 7, sigmaY: 14),
                    child: Container(
                      color: Colors.black.withOpacity(0.7),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 15, 20, 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Icon(
                                    Icons.arrow_back_ios,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                  width: 120,
                                  child: Image.asset(
                                    "assets/images/logo.png",
                                    fit: BoxFit.contain,
                                    color: Colors.white,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                                GFAvatar(
                                  size: 25,
                                  child: Image.network(
                                    "https://images.pexels.com/photos/11650554/pexels-photo-11650554.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                            height: 300,
                            width: 300,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network(
                                "https://images.pexels.com/photos/11650554/pexels-photo-11650554.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            width: 250,
                            height: 50,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ),
                                  const SizedBox(
                                    width: 25,
                                  ),
                                  BalloonSlider(
                                      value: 0,
                                      onChangeStart: (value) {},
                                      onChangeEnd: (value) {},
                                      onChanged: (value) {},
                                      color: const Color(0xFF00043D))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Caption: ",
                          style: GoogleFonts.nunito(
                            fontSize: 15,
                              fontWeight: FontWeight.w900,
                              color: Color(0xFF00043D)),
                        ), SizedBox(width: 10,),
                       
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
