import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/pages/fast_laughs/widgets/video_list.dart';

class FastLaughsScreen extends StatelessWidget {
  const FastLaughsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: List.generate(5, (index) {
          return VideoListItem(index: index);
        }),
      ),
    );
  }
}
