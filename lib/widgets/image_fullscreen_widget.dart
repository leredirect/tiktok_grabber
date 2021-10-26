import 'package:flutter/material.dart';

class ImageFullscreenWidget extends StatelessWidget {
  final String imageSrc;

  const ImageFullscreenWidget({required Key key, required this.imageSrc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (details) {
        if (details.delta.dy > 0) {
          Navigator.pop(context);
        }
      },
      child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.height,
          child: InteractiveViewer(
              child: Image.network(
            imageSrc,
            fit: BoxFit.contain,
          ))),
    );
  }
}
