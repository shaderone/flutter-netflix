import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/colors.dart';
import 'package:netflix_clone/presentation/pages/home/widgets/hero.dart';

class NewAndHotDatedContent extends StatelessWidget {
  const NewAndHotDatedContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        NewAndHotDate(),
        Expanded(child: NewAndHotContent()),
      ],
    );
  }
}

class NewAndHotDate extends StatelessWidget {
  const NewAndHotDate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 100,
      child: Column(
        children: [
          const Text(
            "FEB",
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
          Text(
            "11",
            style: GoogleFonts.montserrat(
              letterSpacing: 8,
              fontSize: 34,
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
  const NewAndHotContent({
    Key? key,
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
                  "https://www.themoviedb.org/t/p/w533_and_h300_bestv2/56v2KjBlU4XaOv9rVYEQypROD7P.jpg",
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
                              const HeroActions(
                                icon: Icons.notifications_none,
                                iconText: "Remind me",
                              ),
                              const HeroActions(
                                icon: Icons.info_outline,
                                iconText: "Info",
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Volume 2 coming July 8th",
                              style: GoogleFonts.montserrat(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "Coming on July 8th Coming on July 8th Coming on July 8th Coming on July 8th Coming on July 8th Coming on July 8th Coming on July 8th Coming on July 8th ",
                              style: TextStyle(
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
