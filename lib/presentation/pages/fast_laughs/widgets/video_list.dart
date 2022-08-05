import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_clone/bloc/fastLaugh/fast_laugh_bloc.dart';
import 'package:netflix_clone/core/colors.dart';
import 'package:netflix_clone/core/strings.dart';
import 'package:netflix_clone/presentation/pages/fast_laughs/fast_laughs_screen.dart';
import 'package:video_player/video_player.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({required this.index, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final posterPath =
        InheritedFastLaughsScreen.of(context)?.mediaData.posterPath;

    //index % tempVideoUrl.length = to make sure that the index will never be greater than the lenght of the available videoUrls
    final videoUrl = tempVideoUrl[index % tempVideoUrl.length];
    return Stack(
      children: [
        FastLaughVideoPlayer(
            videoUrl: videoUrl, onStateChanged: (bool videoState) {}),
        //Container(
        //  //color: Colors.accents[index + 4],
        //  decoration: const BoxDecoration(
        //    image: DecorationImage(
        //      fit: BoxFit.cover,
        //      image:
        //          NetworkImage("https://wallpapercave.com/wp/wp10504676.jpg"),
        //    ),
        //  ),
        //),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 120,
                //logo
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
              children: [
                VideoActionsProfileItem(profilePath: posterPath),
                const VideoActionsListItem(
                    icon: Icons.sentiment_very_satisfied_outlined,
                    iconText: "80.5k"),
                const VideoActionsListItem(
                    icon: Icons.add, iconText: "My List"),
                const VideoActionsListItem(
                  icon: Icons.send,
                  iconText: "10.4k",
                  angle: -45,
                ),
                const VideoActionsListItem(
                    icon: Icons.play_arrow, iconText: "Play"),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActionsProfileItem extends StatelessWidget {
  final String? profilePath;
  const VideoActionsProfileItem({Key? key, required this.profilePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(profilePath == null
                ? "https://static.wikia.nocookie.net/villains/images/4/4c/Eren_meets_Yeagerists.png/revision/latest?cb=20210302172340"
                : "$imageAppendUrl$profilePath"),
          ),
          Positioned(
            top: 45,
            child: SizedBox(
              width: 60,
              //logo
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

class FastLaughVideoPlayer extends StatefulWidget {
  final String videoUrl;
  final void Function(bool isPlaying) onStateChanged;
  const FastLaughVideoPlayer({
    Key? key,
    required this.videoUrl,
    required this.onStateChanged,
  }) : super(key: key);

  @override
  State<FastLaughVideoPlayer> createState() => _FastLaughVideoPlayerState();
}

class _FastLaughVideoPlayerState extends State<FastLaughVideoPlayer> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    super.initState();
    //here videoUrl cannot be directly accessed because the variable is inside a stateful Widget
    _videoPlayerController = VideoPlayerController.network(widget.videoUrl);
    _videoPlayerController.initialize().then((value) {
      setState(() {
        _videoPlayerController.play();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: _videoPlayerController.value.isInitialized
          ? AspectRatio(
              aspectRatio: _videoPlayerController.value.aspectRatio,
              child: VideoPlayer(_videoPlayerController),
            )
          : const Center(child: CircularProgressIndicator(strokeWidth: 2)),
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }
}
