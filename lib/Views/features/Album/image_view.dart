import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ImageView extends StatelessWidget {
  const ImageView({super.key, required this.url});
  final String url;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      PhotoView(
        imageProvider: NetworkImage(url),
        heroAttributes: PhotoViewHeroAttributes(tag: url),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 25, top: 15),
        child: Align(
          alignment: Alignment.topLeft,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(left: 8),
              height: 30,
              width: 30,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,size: 20,
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
