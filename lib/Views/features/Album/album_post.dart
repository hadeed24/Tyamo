import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_balloon_slider/flutter_balloon_slider.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/getwidget.dart';
import 'dart:ui' as prefix0;

import 'package:google_fonts/google_fonts.dart';
import 'package:list_tile_more_customizable/list_tile_more_customizable.dart';
import 'package:tyamo/Views/features/Album/image_view.dart';

class AlbumPost extends StatelessWidget {
  const AlbumPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
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
                                padding:
                                    const EdgeInsets.fromLTRB(20, 15, 20, 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const ImageView(
                                            url:
                                                'https://images.pexels.com/photos/11650554/pexels-photo-11650554.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                                      ),
                                    );
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Hero(
                                      tag:
                                          "https://images.pexels.com/photos/11650554/pexels-photo-11650554.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                                      child: Image.network(
                                        "https://images.pexels.com/photos/11650554/pexels-photo-11650554.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Caption: ",
                              style: GoogleFonts.nunito(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                  color: const Color(0xFF00043D)),
                            ),
                            GestureDetector(
                              onTap: () {
                                awesomedialog(context);
                              },
                              child: const Icon(
                                Icons.edit,
                                color: Color(0xFF00043D),
                              ),
                            )
                          ],
                        ),
                        FocusedMenuHolder(
                          onPressed: () {},
                          menuItems: [
                            FocusedMenuItem(
                                title: Text(
                                  "Copy",
                                  style: GoogleFonts.nunito(
                                      color: const Color(0xFF00043D),
                                      fontWeight: FontWeight.bold),
                                ),
                                onPressed: () {},
                                trailingIcon: const Icon(FontAwesomeIcons.copy,
                                    color: Color(0xFF00043D))),
                            FocusedMenuItem(
                              title: Text(
                                "Edit",
                                style: GoogleFonts.nunito(
                                    color: const Color(0xFF00043D),
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                awesomedialog(context);
                              },
                              trailingIcon: const Icon(
                                FontAwesomeIcons.edit,
                                color: Color(0xFF00043D),
                              ),
                            ),
                            FocusedMenuItem(
                              title: Text(
                                "Delete",
                                style: GoogleFonts.nunito(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                awesomedialog(context);
                              },
                              trailingIcon: const Icon(
                                FontAwesomeIcons.trash,
                                color: Colors.white,
                              ),
                              backgroundColor: const Color(0xFF00043D),
                            )
                          ],
                          menuWidth: MediaQuery.of(context).size.width / 2,
                          blurSize: 2.0,
                          menuItemExtent: 45,
                          menuBoxDecoration: const BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          duration: const Duration(milliseconds: 100),
                          animateMenuItems: true,
                          blurBackgroundColor: Colors.black54,
                          menuOffset: 10,
                          bottomOffsetHeight: 80,
                          child: ExpandableText(
                            "Place caption",
                            expandText: 'show more',
                            collapseText: 'show less',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                            maxLines: 2,
                            linkColor: Colors.amberAccent,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Comments",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                            color: const Color(0xFF00043D),
                          ),
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return FocusedMenuHolder(
                              menuItems: [
                                FocusedMenuItem(
                                    title: Text(
                                      "Copy",
                                      style: GoogleFonts.nunito(
                                          color: const Color(0xFF00043D),
                                          fontWeight: FontWeight.bold),
                                    ),
                                    onPressed: () {},
                                    trailingIcon: const Icon(
                                        FontAwesomeIcons.copy,
                                        color: Color(0xFF00043D))),
                                FocusedMenuItem(
                                  title: Text(
                                    "Delete",
                                    style: GoogleFonts.nunito(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  onPressed: () {},
                                  trailingIcon: const Icon(
                                    FontAwesomeIcons.trash,
                                    color: Colors.white,
                                  ),
                                  backgroundColor: Colors.redAccent,
                                )
                              ],
                              menuWidth: MediaQuery.of(context).size.width / 2,
                              blurSize: 2.0,
                              menuItemExtent: 45,
                              menuBoxDecoration: const BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              duration: const Duration(milliseconds: 100),
                              animateMenuItems: true,
                              blurBackgroundColor: Colors.black54,
                              menuOffset: 10,
                              bottomOffsetHeight: 80,
                              onPressed: () {},
                              child: ListTileMoreCustomizable(
                                title: Text(
                                  "@faizan",
                                  style: GoogleFonts.nunito(
                                    fontSize: 15,
                                    color: const Color(0xFF00043D),
                                  ),
                                ),
                                leading: GFAvatar(
                                  size: 25,
                                  child: Image.network(
                                    "https://images.pexels.com/photos/11650554/pexels-photo-11650554.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                                  ),
                                ),
                                minLeadingWidth: 60,
                                horizontalTitleGap: 0,
                                minVerticalPadding: 10,
                                contentPadding: const EdgeInsets.all(0),
                                isThreeLine: false,
                                subtitle: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "SSSSSSSSSSSSSSSSSSSSSS",
                                    textAlign: TextAlign.justify,
                                    style: GoogleFonts.nunito(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                trailing: Text(
                                  "Just now",
                                  style: GoogleFonts.nunito(
                                    fontSize: 11,
                                    color: Colors.grey,
                                  ),
                                ),
                                onTap: null,
                                onLongPress: null,
                              ),
                            );
                          },
                        ),
                        const SizedBox(
                          height: 60,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Material(
                  borderRadius: BorderRadius.circular(60),
                  elevation: 10,
                  child: TextFormField(
                    controller: null,
                    textCapitalization: TextCapitalization.sentences,
                    decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: IconButton(
                              icon: const Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                              onPressed: () {}),
                        ),
                        hintText: "Start new conversation",
                        hintStyle: GoogleFonts.nunito(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        filled: true,
                        fillColor: const Color(0xFF00043D),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(60),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.all(20)),
                    keyboardType: TextInputType.multiline,
                    minLines: 1,
                    maxLines: 3,
                    style: GoogleFonts.nunito(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void awesomedialog(BuildContext context) {
    AwesomeDialog(
      context: context,
      animType: AnimType.scale,
      dialogType: DialogType.noHeader,
      title: "Edit Caption",
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                "Edit Caption",
                style: GoogleFonts.nunito(
                    color: const Color(0xFF00043D),
                    fontSize: 20,
                    fontWeight: FontWeight.w900),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                controller: null,
                decoration: InputDecoration(
                  suffixIcon: const Icon(
                    Icons.arrow_forward_rounded,
                    color: Colors.white,
                    size: 14,
                  ),
                  labelText: "Enter new caption",
                  labelStyle: GoogleFonts.nunito(color: Colors.black),
                  fillColor: Colors.black,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: Color(0xFF00043D),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: Color(0xFF00043D),
                    ),
                  ),
                ),
                keyboardType: TextInputType.multiline,
                minLines: 1,
                maxLines: null,
              ),
            ],
          ),
        ),
      ),
      dismissOnBackKeyPress: true,
      isDense: false,
      btnOkOnPress: () {},
      btnOkText: "Confirm caption",
      titleTextStyle: GoogleFonts.nunito(),
    ).show();
  }
}
