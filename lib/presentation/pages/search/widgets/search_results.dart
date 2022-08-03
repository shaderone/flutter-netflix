import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/bloc/search/search_bloc.dart';
import 'package:netflix_clone/core/strings.dart';
import 'package:netflix_clone/presentation/common_widgets/main_v_card.dart';
import 'package:netflix_clone/presentation/common_widgets/title.dart';

class SearchResultsWidget extends StatelessWidget {
  const SearchResultsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        const MainTitle(
          mainTitle: "Movies & TV",
        ),
        const SizedBox(height: 20),
        BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            return GridView.count(
              physics: const BouncingScrollPhysics(),
              crossAxisCount: 3,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              childAspectRatio: 1 / 1.5,
              shrinkWrap: true,
              children: List.generate(state.searchResponseData.length, (index) {
                final singleMediaPoster =
                    state.searchResponseData[index].posterPath;
                return MainVCardWidget(
                  poster: "$imageAppendUrl$singleMediaPoster",
                );
              }),
            );
          },
        ),
      ],
    );
  }
}
