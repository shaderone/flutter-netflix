import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/pages/fast_laughs/widgets/video_list.dart';
import 'package:netflix_clone/presentation/root/widgets/bottom_nav.dart';

class FastLaughsScreen extends StatelessWidget {
  const FastLaughsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: List.generate(5, (index) {
            return VideoListItem(index: index);
          }),
        ),
      ),
      bottomNavigationBar: const BottomNavWidget(),
    );
  }
}
