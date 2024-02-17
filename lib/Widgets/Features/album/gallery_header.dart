
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GalleryHeader extends StatelessWidget {
  const GalleryHeader({
    super.key,
    required this.context,
    required this.tuVal,
    required this.toVal,
    required this.isEditable,
    required this.name,
    required this.description,
  });
  final BuildContext context;

  final String tuVal;
  final String toVal;
  final bool isEditable;
  final String name;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 330,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40)),
          color: Color(0xFF00043D),
          boxShadow: [
            BoxShadow(
                color: Colors.black, offset: Offset(0.0, 1.0), blurRadius: 6)
          ]),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            alignment: Alignment.center,
            height: 250,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
                color: Color.fromARGB(255, 14, 19, 85),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      offset: Offset(0.0, 1.0),
                      blurRadius: 6)
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Gallery",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 18,
                    letterSpacing: 3,
                  ),
                ),
                CircularProfileAvatar(
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
/*  onTap: () {
pageController.animateToPage(0,
duration: const Duration(milliseconds: 200),
curve: Curves.linear);
Navigator.of(context).pop();
}, */
                  animateFromOldImageOnUrlChange: true,
                  placeHolder: (context, url) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
                Text(
                  name,
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 18,
                    letterSpacing: 1,
                  ),
                ),
                Text(
                  description,
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700,
                    color: const Color.fromARGB(255, 230, 230, 230),
                    fontSize: 12,
                    letterSpacing: 1,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Total uploads",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        color: const Color.fromARGB(255, 230, 230, 230),
                        fontSize: 12,
                        letterSpacing: 1,
                      ),
                    ),
                    Text(
                      toVal,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w900,
                        color: const Color.fromARGB(255, 230, 230, 230),
                        fontSize: 17,
                        letterSpacing: 1,
                      ),
                    )
                  ],
                ),
                isEditable
                    ? GestureDetector(
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: const Icon(
                            Icons.edit,
                            color: Color(0xFF00043D),
                            size: 25,
                          ),
                        ),
                        onTap: () {
                          AwesomeDialog(
                                  context: context,
                                  dialogType: DialogType.noHeader,
                                  animType: AnimType.scale,
                                  body: Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: TextField(
                                          decoration: InputDecoration(
                                            labelText:
                                                "Enter Album Description",
                                            labelStyle: GoogleFonts.nunito(
                                              color: Colors.black,
                                            ),
                                            fillColor: Colors.black,
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              borderSide: const BorderSide(
                                                  color: Colors.black),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              borderSide: const BorderSide(
                                                color: Color(0xFF00043D),
                                              ),
                                            ),
                                          ),
                                          maxLines: null,
                                          minLines: 2,
                                          keyboardType: TextInputType.text),
                                    ),
                                  ),
                                  btnOkOnPress: () {})
                              .show();
                        },
                      )
                    : const SizedBox(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Times Opened",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w700,
                        color: const Color.fromARGB(255, 230, 230, 230),
                        fontSize: 12,
                        letterSpacing: 1,
                      ),
                    ),
                    Text(
                      tuVal,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w900,
                        color: const Color.fromARGB(255, 230, 230, 230),
                        fontSize: 17,
                        letterSpacing: 1,
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
