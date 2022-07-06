import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:netflix_clone/presentation/pages/home/widgets/floating_appbar.dart';
import 'package:netflix_clone/presentation/pages/home/widgets/hero.dart';
import 'package:netflix_clone/presentation/pages/home/widgets/num_titled_main_v_card.dart';
import 'package:netflix_clone/presentation/pages/home/widgets/titled_main_v_card.dart';
import 'package:netflix_clone/presentation/root/widgets/bottom_nav.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double scrollOffset = 0.0;

  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          scrollOffset = _scrollController.offset;
        });
      });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: NestedScrollView(
          controller: _scrollController,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            CustomFloatingAppbar(
              scrollOffset: scrollOffset,
              innerBoxIsScrolled: innerBoxIsScrolled,
            ),
          ],
          body: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned.fill(
                top: -55,
                child: ListView(
                  padding: const EdgeInsets.only(top: 0, bottom: 90),
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
        ),
        bottomNavigationBar: const BottomNavWidget(),
      ),
    );
  }
}
