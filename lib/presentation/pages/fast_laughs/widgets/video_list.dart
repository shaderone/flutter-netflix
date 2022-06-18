import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({required this.index, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index + 4],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 120,
                child: Image.asset("assets/aot.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: backgroundColor.withOpacity(.5),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "U/A 18+",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: CircleAvatar(
              radius: 30,
              backgroundColor: backgroundColor.withOpacity(.1),
              child: Icon(
                Icons.volume_off_rounded,
                color: Colors.white.withOpacity(.9),
                size: 30,
              ),
            ),
          ),
        ),
        Positioned(
          right: 15,
          bottom: 15,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: const [
                VideoActionsProfileItem(),
                VideoActionsListItem(
                    icon: Icons.sentiment_very_satisfied_outlined,
                    iconText: "80.5k"),
                VideoActionsListItem(icon: Icons.add, iconText: "My List"),
                VideoActionsListItem(
                  icon: Icons.send,
                  iconText: "10.4k",
                  angle: -45,
                ),
                VideoActionsListItem(icon: Icons.play_arrow, iconText: "Play"),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActionsProfileItem extends StatelessWidget {
  const VideoActionsProfileItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage("assets/profile.jpg"),
          ),
          Positioned(
            top: 45,
            child: SizedBox(
              width: 60,
              child: Image.asset("assets/aot.png"),
            ),
          )
        ],
      ),
    );
  }
}

class VideoActionsListItem extends StatelessWidget {
  final IconData icon;
  final String iconText;
  //temp
  final double angle;
  const VideoActionsListItem({
    required this.icon,
    required this.iconText,
    this.angle = -0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Transform.rotate(
          angle: angle * pi / 180,
          child: Icon(
            icon,
            size: 28,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          iconText,
          textAlign: TextAlign.center,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
