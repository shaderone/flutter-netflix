import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FloatingAppbarWidget extends StatelessWidget {
  final double scrollOffset;
  const FloatingAppbarWidget({
    Key? key,
    this.scrollOffset = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      systemOverlayStyle:
          const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      expandedHeight: 110,
      //background does not change
      backgroundColor:
          Colors.black.withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
      floating: true,
      elevation: 0,
      pinned: true,
      title: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: SizedBox(
          width: 30,
          height: 60,
          child: Image.asset(
            "assets/logo.png",
            //width: 80,
          ),
        ),
      ),
      centerTitle: false,
      actions: [
        IconButton(
          splashRadius: 20,
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        IconButton(
          splashRadius: 20,
          onPressed: () {},
          icon: const Icon(Icons.more_vert),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(48),
        child: TabBar(
          padding: const EdgeInsets.symmetric(vertical: 0),
          indicatorColor: Colors.transparent.withOpacity(0.01),
          tabs: const [
            CustomTab(name: "Tv Shows"),
            CustomTab(name: "Movies"),
            CustomTab(name: "Categories"),
          ],
        ),
      ),
    );
  }
}

class CustomTab extends StatelessWidget {
  final String name;

  const CustomTab({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        name,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    );
  }
}
