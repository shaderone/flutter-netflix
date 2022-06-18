import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/pages/search/widgets/search_title.dart';

const posterImg =
    "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/5tcuowV4HZRxxvDiWn4bmumuZSk.jpg";

class SearchResultsWidget extends StatelessWidget {
  const SearchResultsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        const SearchTitle(
          searchTitle: "Movies & TV",
        ),
        const SizedBox(height: 20),
        GridView.count(
          physics: const BouncingScrollPhysics(),
          crossAxisCount: 3,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          childAspectRatio: 1 / 1.5,
          shrinkWrap: true,
          children: List.generate(15, (index) {
            return const MainCardVWidget();
          }),
        ),
      ],
    );
  }
}

class MainCardVWidget extends StatelessWidget {
  const MainCardVWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: SizedBox.fromSize(
        child: Image.network(
          posterImg,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
