import 'dart:math';

import 'package:flutter/material.dart';

final posters = [
  "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/5tcuowV4HZRxxvDiWn4bmumuZSk.jpg",
  "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/wrCVHdkBlBWdJUZPvnJWcBRuhSY.jpg",
  "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/qgrk7r1fV4IjuoeiGS5HOhXNdLJ.jpg",
];

class DownloadPosterWidget extends StatelessWidget {
  final Size screenDimensions;
  const DownloadPosterWidget({required this.screenDimensions, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    //screenDimensions will be passed down to here -- done
    final screenDimension = MediaQuery.of(context).size;

    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Positioned(
          bottom: screenDimension.width / 4.75,
          //right: screenDimension.width / 7,
          child: CircleAvatar(
            radius: 120,
            backgroundColor: Colors.grey.shade800,
          ),
        ),
        Positioned(
          bottom: screenDimension.width / 3.75,
          right: screenDimension.width / 7,
          child: Transform.rotate(
            angle: 20 * pi / 180,
            //angle: 0,
            child: SizedBox(
              width: screenDimension.width / 3.75,
              height: screenDimension.width / 2.75,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5), // Image border
                child: SizedBox.fromSize(
                  //size: Size.fromRadius(28), // Image radius
                  child: Image.network(posters[2], fit: BoxFit.cover),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: screenDimension.width / 3.75,
          left: screenDimension.width / 7,
          child: Transform.rotate(
            angle: -20 * pi / 180,
            //angle: 0,
            child: SizedBox(
              width: screenDimension.width / 3.75,
              height: screenDimension.width / 2.75,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5), // Image border
                child: SizedBox.fromSize(
                  //size: Size.fromRadius(28), // Image radius
                  child: Image.network(posters[2], fit: BoxFit.cover),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: screenDimension.width / 3.75,
          //left: screenDimension.width / 3.25,
          //right: screenDimension.width / 3.25,
          child: Transform.rotate(
            //angle: -10 * pi / 180,
            angle: 0,
            child: SizedBox(
              //only change
              width: screenDimension.width / 3,
              height: screenDimension.width / 2.25,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5), // Image border
                child: SizedBox.fromSize(
                  child: Image.network(posters[1], fit: BoxFit.cover),
                ),
              ),
            ),
          ),
        ),
        //download-poster-image-widget(position (left and right)) in positione
      ],
    );
  }
}
