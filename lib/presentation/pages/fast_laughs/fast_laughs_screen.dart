import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/bloc/fastLaugh/fast_laugh_bloc.dart';
import 'package:netflix_clone/domain/pages/downloads/modals/downloads_modal.dart';
import 'package:netflix_clone/presentation/pages/fast_laughs/widgets/video_list.dart';
import 'package:netflix_clone/presentation/root/widgets/bottom_nav.dart';

class InheritedFastLaughsScreen extends InheritedWidget {
  //every properties of the parent/or top level widget will be inherited by this childWidget
  final Widget childWidget;
  final DownloadsModal mediaData;

  const InheritedFastLaughsScreen({
    Key? key,
    required this.childWidget,
    required this.mediaData,
  }) : super(key: key, child: childWidget);

  @override
  //This function decides whethere to rebuild the entire child/decendands when either the childWidget or data changes
  bool updateShouldNotify(covariant InheritedFastLaughsScreen oldWidget) =>
      oldWidget.mediaData != mediaData;

  static InheritedFastLaughsScreen? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<InheritedFastLaughsScreen>();
}

class FastLaughsScreen extends StatelessWidget {
  const FastLaughsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<FastLaughBloc>(context)
          .add(const FastLaughEvent.initialize());
    });
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<FastLaughBloc, FastLaughState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                  child: CircularProgressIndicator(strokeWidth: 2));
            } else if (state.isError) {
              return const Text("Error fetching data");
            } else if (state.profileList.isEmpty) {
              return const Text("No Videos available!");
            } else {
              return PageView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                children: List.generate(
                  state.profileList.length,
                  (index) {
                    return InheritedFastLaughsScreen(
                        childWidget: VideoListItem(
                          key: Key(index.toString()),
                          index: index,
                        ),
                        mediaData: state.profileList[index]);
                  },
                ),
              );
            }
          },
        ),
      ),
      bottomNavigationBar: const BottomNavWidget(),
    );
  }
}
