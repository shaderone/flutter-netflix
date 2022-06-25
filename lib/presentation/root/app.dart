import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/pages/downloads/download_screen.dart';
import 'package:netflix_clone/presentation/pages/fast_laughs/fast_laughs_screen.dart';
import 'package:netflix_clone/presentation/pages/home/home_screen.dart';
import 'package:netflix_clone/presentation/pages/new_and_hot/new_and_hot_screen.dart';
import 'package:netflix_clone/presentation/pages/search/search_screen.dart';
import 'package:netflix_clone/presentation/root/widgets/bottom_nav.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  final _mainPages = const [
    HomeScreen(),
    NewAndHotScreen(),
    FastLaughsScreen(),
    SearchScreen(),
    DownloadScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: currentNavIndexNotifier,
      builder: (BuildContext context, int newpageIndex, Widget? _) {
        return _mainPages[newpageIndex];
      },
    );
  }
}
