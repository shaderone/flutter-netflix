import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        AspectRatio(
          aspectRatio: 4 / 5,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                alignment: Alignment.bottomCenter,
                image: NetworkImage(
                  "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/A7CzMZBitf00BAtb1kJa50pWPgV.jpg",
                ),
              ),
            ),
          ),
        ),
        AspectRatio(
          aspectRatio: 4 / 5,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color.fromARGB(145, 0, 0, 0), Colors.transparent],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              HeroStats(stat: "Emotional"),
              HeroStats(stat: "drama"),
              HeroStats(stat: "family"),
              HeroStats(stat: "thriller", isFinalStat: true),
            ],
          ),
        ),
        Positioned(
          bottom: -50,
          child: SizedBox(
            width: MediaQuery.of(context).size.width -
                MediaQuery.of(context).size.width / 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const HeroActions(
                  icon: Icons.add,
                  iconText: "My List",
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.play_arrow,
                          color: Colors.black,
                          size: 36,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: Text(
                            "Play",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const HeroActions(
                  icon: Icons.add,
                  iconText: "My List",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class HeroStats extends StatelessWidget {
  final String stat;
  final bool isFinalStat;
  const HeroStats({
    required this.stat,
    this.isFinalStat = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(stat),
        const SizedBox(width: 5),
        Visibility(
          visible: isFinalStat ? false : true,
          child: const Text("•", style: TextStyle(color: Colors.red)),
        ),
        const SizedBox(width: 5)
      ],
    );
  }
}

class HeroActions extends StatelessWidget {
  final IconData icon;
  final String iconText;
  const HeroActions({
    required this.icon,
    required this.iconText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 28,
        ),
        const SizedBox(height: 5),
        Text(
          iconText,
          textAlign: TextAlign.center,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
