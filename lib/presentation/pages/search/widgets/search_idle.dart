import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/bloc/search/search_bloc.dart';
import 'package:netflix_clone/core/strings.dart';
import 'package:netflix_clone/presentation/common_widgets/title.dart';

class IdleSearchWidget extends StatelessWidget {
  const IdleSearchWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        return state.isSearchLoading
            ? const Center(child: CircularProgressIndicator())
            : ListView.separated(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final singleMediaInfo = state.idleListData[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Visibility(
                        visible: index == 0 ? true : false,
                        child: const MainTitle(mainTitle: "Top Searches"),
                      ),
                      Visibility(
                        visible: index == 0 ? true : false,
                        child: const SizedBox(height: 20),
                      ),
                      TopSearchListItem(
                        title: singleMediaInfo.posterTitle ??
                            singleMediaInfo.posterName ??
                            "no title",
                        backdropPath:
                            singleMediaInfo.backdropPath ?? "No poster",
                      )
                    ],
                  );
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 15),
                itemCount: state.idleListData.length,
              );
      },
    );
  }
}

class TopSearchListItem extends StatelessWidget {
  final String title;
  final String backdropPath;
  const TopSearchListItem({
    Key? key,
    required this.title,
    required this.backdropPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenDimensions = MediaQuery.of(context).size;
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        if (state.isError) {
          return const Text("Error");
        } else if (state.idleListData.isEmpty) {
          return const Text("IdleList is empty");
        } else {
          return Row(
            children: [
              SizedBox(
                width: screenDimensions.width / 2.75,
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image(
                      image: NetworkImage(
                        '$imageAppendUrl$backdropPath',
                      ),
                      fit: BoxFit.fill, // use this
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  title,
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15, right: 10),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.play_circle,
                    size: 45,
                  ),
                ),
              )
            ],
          );
        }
      },
    );
  }
}
