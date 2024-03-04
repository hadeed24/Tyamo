import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tyamo/Widgets/Common/logo_appbar.dart';

class AlbumNewPost extends StatelessWidget {
  const AlbumNewPost({super.key});

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
        body: ListView(
          children: [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://i02.appmifile.com/images/2019/03/06/829199af-238d-46b6-8294-525d9e6e8226.png"),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
              ),
              title: Container(
                width: 250,
                child: TextFormField(
                  controller: null,
                  decoration: InputDecoration(
                      hintText: "Write a caption", border: InputBorder.none),
                  onChanged: (value) {},
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 10),
              child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFF00043D)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Post",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              letterSpacing: 4,
                              fontWeight: FontWeight.bold),
                        ),
                      ))),
            )
          ],
        ));
  }
}
