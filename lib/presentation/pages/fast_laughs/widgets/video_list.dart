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
        /*top section here*/
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: CircleAvatar(
              radius: 30,
              backgroundColor: backgroundColor.withOpacity(.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Flexible(
                    flex: 1,
                    child: Icon(
                      Icons.volume_mute_outlined,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.only(right: 10.0, left: 10),
                      child: Icon(
                        Icons.close_rounded,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
