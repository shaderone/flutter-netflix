import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/pages/home/widgets/num_titled_main_v_card.dart';
import 'package:netflix_clone/presentation/pages/home/widgets/titled_main_v_card.dart';
import 'package:netflix_clone/presentation/root/widgets/bottom_nav.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        body: Stack(
          children: [
            NestedScrollView(
              //floatHeaderSlivers: true,
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                SliverAppBar(
                  expandedHeight: 120,
                  backgroundColor: Colors.transparent,
                  floating: true,
                  //snap: true,
                  pinned: true,
                  title: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: SizedBox(
                      width: 30,
                      height: 60,
                      child: Image.asset(
                        "assets/logo.png",
                        //width: 80,
                      ),
                    ),
                  ),
                  centerTitle: false,
                  actions: [
                    IconButton(
                      splashRadius: 20,
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                    ),
                    IconButton(
                      splashRadius: 20,
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert),
                    ),
                  ],
                  bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(68),
                    child: TabBar(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      indicatorColor: Colors.transparent.withOpacity(0.01),
                      tabs: const [
                        Tab(
                          child: Text(
                            "Tv Shows",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Movies",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Categories",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
              body: ListView(
                padding: EdgeInsets.zero,
                physics: const BouncingScrollPhysics(),
                children: const [
                  Padding(
                    padding: EdgeInsets.only(bottom: 50),
                    child: HeroWidget(),
                  ),
                  SizedBox(height: 20),
                  TitledVCardListWidget(
                    listTitle: "Released in the Past Year",
                    listImg:
                        "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/d5NXSklXo0qyIYkgV94XAgMIckC.jpg",
                  ),
                  TitledVCardListWidget(
                    listTitle: "Trending Now",
                    listImg:
                        "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/stTEycfG9928HYGEISBFaG1ngjM.jpg",
                  ),
                  NumTitledVCardListWidget(
                    listTitle: "Top 10 TV Shows in India Today",
                    listImg:
                        "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/wZfwOIlbc81pZb1NIgN2laZQWQk.jpg",
                  ),
                  TitledVCardListWidget(
                    listTitle: "Most Popular",
                    listImg:
                        "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/gSjykY5ZuVWHK0C7k4CXZ5566No.jpg",
                  ),
                  TitledVCardListWidget(
                    listTitle: "Tense Dramas",
                    listImg:
                        "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/nShEY0JnMOsvdhEnmYvL9mowIKz.jpg",
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: const BottomNavWidget(),
      ),
    );
  }
}

class HeroWidget extends StatelessWidget {
  const HeroWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        AspectRatio(
          aspectRatio: 2 / 2.25,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.lightBlue.shade100.withOpacity(.1),
              image: const DecorationImage(
                fit: BoxFit.cover,
                alignment: Alignment.bottomCenter,
                image: NetworkImage(
                  "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/A7CzMZBitf00BAtb1kJa50pWPgV.jpg",
                ),
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
