import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:netflix_clone/core/colors.dart';
import 'package:netflix_clone/core/strings.dart';
import 'package:netflix_clone/domain/pages/new_and_hot/modals/new_and_hot_modal.dart';
import 'package:netflix_clone/presentation/pages/home/widgets/hero.dart';

class NewAndHotDatedContent extends StatelessWidget {
  final NewAndHotModal mediainfo;
  final String parsedDate;
  const NewAndHotDatedContent({
    required this.mediainfo,
    Key? key,
    required this.parsedDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        NewAndHotDate(date: parsedDate),
        Expanded(
          child: NewAndHotContent(
            backdropPath: mediainfo.backdropPath,
            description: mediainfo.overview,
            name: mediainfo.mainMediaName,
          ),
        ),
      ],
    );
  }
}

class NewAndHotDate extends StatelessWidget {
  final String date;
  const NewAndHotDate({
    Key? key,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 100,
      child: Column(
        children: [
          Text(
            date.split(" ").first,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
          Text(
            date.split(" ").last,
            style: GoogleFonts.montserrat(
              letterSpacing: 4,
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade300,
            ),
          ),
        ],
      ),
    );
  }
}

class NewAndHotContent extends StatelessWidget {
  final String backdropPath;
  final String name;
  final String description;

  //genere and logo will be added later

  final bool shareIcon;
  const NewAndHotContent({
    Key? key,
    this.shareIcon = false,
    required this.backdropPath,
    required this.description,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 430,
      child: Column(
        children: [
          Stack(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.network(
                  "$imageAppendUrl$backdropPath",
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 5,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: backgroundColor.withOpacity(.4),
                    child: Icon(
                      Icons.volume_off_rounded,
                      color: Colors.white.withOpacity(.9),
                      size: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Flexible(
            child: SizedBox.expand(
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.network(
                                "https://i.ibb.co/C14b7FJ/stranger-things-season-1-logo-4-F669984-C9-seeklogo-1.png",
                                width: 170,
                                fit: BoxFit.cover,
                              ),
                              Visibility(
                                visible: !shareIcon ? true : false,
                                child: const HeroActions(
                                  icon: Icons.notifications_none,
                                  iconText: "Remind me",
                                ),
                              ),
                              Visibility(
                                visible: !shareIcon ? true : false,
                                child: const HeroActions(
                                  icon: Icons.info_outline,
                                  iconText: "Info",
                                ),
                              ),
                              Visibility(
                                visible: shareIcon ? true : false,
                                child: const HeroActions(
                                  icon: Icons.send,
                                  iconText: "Share",
                                ),
                              ),
                              Visibility(
                                visible: shareIcon ? true : false,
                                child: const HeroActions(
                                  icon: Icons.add,
                                  iconText: "My List",
                                ),
                              ),
                              Visibility(
                                visible: shareIcon ? true : false,
                                child: const HeroActions(
                                  icon: Icons.play_arrow,
                                  iconText: "Play",
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: GoogleFonts.montserrat(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              description,
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                            SingleChildScrollView(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: const [
                                  HeroStats(stat: "Nostalgic"),
                                  HeroStats(stat: "Ominous"),
                                  HeroStats(stat: "Sci-Fi Tv"),
                                  HeroStats(
                                      stat: "Notable Soundtrack",
                                      isFinalStat: true),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
