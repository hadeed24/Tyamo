import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:focused_menu/modals.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:tyamo/Widgets/Features/album/gallery_header.dart';

class friend_album extends StatefulWidget {
  const friend_album({super.key});

  @override
  State<friend_album> createState() => _friend_albumState();
}

class _friend_albumState extends State<friend_album> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          GalleryHeader(
            context: context,
            tuVal: '18',
            toVal: '0',
            isEditable: true,
            name: "Faizan",
            description: "Tell your partner what album means to you",
          ),
          const SizedBox(
            height: 10,
          ),
          StaggeredGridView.countBuilder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      crossAxisCount: 4,
                      itemCount: 6,
                      itemBuilder: (context, index) {
          return FocusedMenuHolder(
            menuWidth: MediaQuery.of(context).size.width * 0.50,
            blurSize: 5.0,
            menuItemExtent: 45,
            menuBoxDecoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(15.0))),
            duration: const Duration(milliseconds: 100),
            animateMenuItems: true,
            blurBackgroundColor: Colors.black54,
            openWithTap:
                true, // Open Focused-Menu on Tap rather than Long Press
            menuOffset:
                10.0, // Offset value to show menuItem from the selected item
            bottomOffsetHeight:
                80.0, // Offset height to consider, for showing the menu item ( for example bottom navigation bar), so that the popup menu will be shown on top of selected item.
            menuItems: <FocusedMenuItem>[
          // Add Each FocusedMenuItem  for Menu Options
              FocusedMenuItem(
                  title: const Text("Open"),
                  trailingIcon: const Icon(Icons.open_in_new),
                  onPressed: () {}),
          
              FocusedMenuItem(
                  title: const Text(
                    "Delete",
                    style: TextStyle(color: Colors.redAccent),
                  ),
                  trailingIcon: const Icon(
                    Icons.delete,
                    color: Colors.redAccent,
                  ),
                  onPressed: () {}),
            ],
            onPressed: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                child: Hero(
                  tag:
                      "https://i02.appmifile.com/images/2019/03/06/829199af-238d-46b6-8294-525d9e6e8226.png",
                  child: Image.network(
                    "https://i02.appmifile.com/images/2019/03/06/829199af-238d-46b6-8294-525d9e6e8226.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          );
                      },
                      staggeredTileBuilder: (int index) =>
            StaggeredTile.count(2, index.isEven ? 2 : 3),
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 15.0,
                    )
        ],
      ),
    );
  }
}
