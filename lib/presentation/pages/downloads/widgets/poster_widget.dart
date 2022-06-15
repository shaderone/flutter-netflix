import 'dart:math';

import 'package:flutter/material.dart';

class DownloadsPosterWidget extends StatelessWidget {
  const DownloadsPosterWidget({
    Key? key,
    required this.screenDimension,
    required this.posters,
  }) : super(key: key);

  final Size screenDimension;
  final List<String> posters;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 10 * pi / 180,
      child: SizedBox(
        width: screenDimension.width / 2.25,
        height: screenDimension.width / 1.75,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15), // Image border
          child: SizedBox.fromSize(
            //size: Size.fromRadius(28), // Image radius
            child: Image.network(posters[0], fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
