import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/pages/home/widgets/titled_main_v_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: const [
          TitledVCardListWidget(
            listTitle: "Released in the Past Year",
            listImg:
                "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/yMdFsHKp4YX2CUkAQcZswxXDuoe.jpg",
          ),
          TitledVCardListWidget(
            listTitle: "Most Popular",
            listImg:
                "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/gSjykY5ZuVWHK0C7k4CXZ5566No.jpg",
          ),
          TitledVCardListWidget(
            listTitle: "Trending Now",
            listImg:
                "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/stTEycfG9928HYGEISBFaG1ngjM.jpg",
          ),
        ],
      ),
    );
  }
}
