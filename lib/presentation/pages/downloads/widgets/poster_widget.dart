import 'dart:math';

import 'package:flutter/material.dart';

final posterss = [
  "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/5tcuowV4HZRxxvDiWn4bmumuZSk.jpg",
  "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/wrCVHdkBlBWdJUZPvnJWcBRuhSY.jpg",
  "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/qgrk7r1fV4IjuoeiGS5HOhXNdLJ.jpg",
];

class DownloadPosterWidget extends StatelessWidget {
  final Size screenDimension;
  const DownloadPosterWidget({required this.screenDimension, Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Positioned(
            bottom: screenDimension.width / 4.75,
            child: CircleAvatar(
              radius: 120,
              backgroundColor: Colors.grey.shade800,
            ),
          ),
          DownloadsPosterImageWidget(
            screenDimension: screenDimension,
            posterAngle: -20,
            posterLeftPosition: screenDimension.width / 7,
            posterRightPosition: null,
          ),
          DownloadsPosterImageWidget(
            screenDimension: screenDimension,
            posterAngle: 20,
            posterLeftPosition: null,
            posterRightPosition: screenDimension.width / 7,
          ),
          DownloadsPosterImageWidget(
            screenDimension: screenDimension,
            posterAngle: 0,
            posterLeftPosition: null,
            posterRightPosition: null,
            posterHeightLimiter: 2.25,
            posterWidthLimiter: 3,
          ),
        ],
      ),
    );
  }
}

//pass posterWidth and height limiter on the last widget in the stack
class DownloadsPosterImageWidget extends StatelessWidget {
  const DownloadsPosterImageWidget({
    Key? key,
    required this.screenDimension,
    required this.posterAngle,
    required this.posterLeftPosition,
    required this.posterRightPosition,
    this.posterWidthLimiter = 3.75,
    this.posterHeightLimiter = 2.75,
  }) : super(key: key);

  final Size screenDimension;

  final double posterAngle;
  final double posterWidthLimiter;
  final double posterHeightLimiter;
  final double? posterLeftPosition;
  final double? posterRightPosition;

  final double posterBorderRadius = 5;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: screenDimension.width / 3.75,
      left: posterLeftPosition,
      right: posterRightPosition,
      child: Transform.rotate(
        angle: posterAngle * pi / 180,
        child: SizedBox(
          width: screenDimension.width / posterWidthLimiter,
          height: screenDimension.width / posterHeightLimiter,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(
              posterBorderRadius,
            ),
            child: SizedBox.fromSize(
              child: Image.network(
                //posterPath,
                posterss[1],
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
