import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:netflix_clone/bloc/new_and_hot/new_and_hot_bloc.dart';
import 'package:netflix_clone/presentation/pages/new_and_hot/widgets/coming_soon_widget.dart';
import 'package:netflix_clone/presentation/pages/new_and_hot/widgets/synced_appbar.dart';
import 'package:netflix_clone/presentation/root/widgets/bottom_nav.dart';

class NewAndHotScreen extends StatelessWidget {
  const NewAndHotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: SyncedAppbar(
            title: "New & Hot",
          ),
        ),
        body: TabBarView(
          children: [
            ComingSoon(
              //key is to persist data and to avoid any duplication
              key: Key("coming soon"),
            ),
            EveryonesWatching(),
          ],
        ),
        bottomNavigationBar: BottomNavWidget(),
      ),
    );
  }
}

class ComingSoon extends StatelessWidget {
  const ComingSoon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<NewAndHotBloc>(context).add(const GetComingSoonData());
    });
    return BlocBuilder<NewAndHotBloc, NewAndHotState>(
      builder: (context, state) {
        //log("in coming-soon -\n ${state.toString()}");
        return ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ),
              );
            } else if (state.isError) {
              return const Center(
                child: Text("Error while fetching Data"),
              );
            } else {
              if (state.comingSoonData.isEmpty) {
                return const Center(
                  child: Text("Coming Soon list is empty"),
                );
              } else {
                final singleMediaInfo = state.comingSoonData[index];
                final _date = DateTime.parse(singleMediaInfo.date);
                //.replaceAll('-', '/')
                final parsedDate = DateFormat.MMMd('en-us').format(_date);
                //log(parsedDate);
                return ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  children: [
                    // ignore: unnecessary_null_comparison
                    if (singleMediaInfo.id != null)
                      NewAndHotDatedContent(
                        mediainfo: singleMediaInfo,
                        parsedDate: parsedDate,
                      )
                    else
                      const SizedBox(),
                  ],
                );
              }
            }
          },
          separatorBuilder: (context, index) => const SizedBox(),
          itemCount: state.comingSoonData.length,
        );
      },
    );
  }
}

class EveryonesWatching extends StatelessWidget {
  const EveryonesWatching({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewAndHotBloc, NewAndHotState>(
      builder: (context, state) {
        return ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            final singleMediaInfo = state.comingSoonData[index];
            return ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(vertical: 10),
              children: [
                NewAndHotContent(
                  shareIcon: true,
                  backdropPath: singleMediaInfo.backdropPath,
                  description: singleMediaInfo.overview,
                  name: singleMediaInfo.mainMediaName,
                )
              ],
            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 10),
          itemCount: 10,
        );
      },
    );
  }
}
