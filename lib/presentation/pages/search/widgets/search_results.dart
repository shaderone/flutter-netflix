import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/pages/search/widgets/search_title.dart';

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
        GridView.count(
          physics: const BouncingScrollPhysics(),
          crossAxisCount: 3,
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
    return const Center(child: Text("search results widget"));
  }
}
