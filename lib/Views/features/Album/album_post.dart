import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'dart:ui' as prefix0;

import 'package:tyamo/Widgets/Common/logo_appbar.dart';

class AlbumPost extends StatelessWidget {
  const AlbumPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40)),
            child: Container(
              width: double.infinity,
              height: 600,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.pexels.com/photos/11650554/pexels-photo-11650554.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    fit: BoxFit.cover),
              ),
              child: BackdropFilter(
                filter: prefix0.ImageFilter.blur(sigmaX: 7, sigmaY: 14),
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 8),
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
                                fit: BoxFit.fill,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
