import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors.dart';

class CustomFloatingAppbar extends StatelessWidget {
  final bool innerBoxIsScrolled;
  final double scrollOffset;
  const CustomFloatingAppbar({
    Key? key,
    this.scrollOffset = 0.0,
    required this.innerBoxIsScrolled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverOverlapAbsorber(
      handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
      sliver: SliverAppBar(
        floating: true,
        pinned: true,
        snap: true,
        backgroundColor: backgroundColor.withOpacity(
          (scrollOffset / 80).clamp(0, 1).toDouble(),
        ),
        leading: SizedBox(
          width: 30,
          height: 60,
          child: Image.asset("assets/logo.png"),
        ),
        actions: [
          IconButton(
            splashRadius: 20,
            iconSize: 32,
            onPressed: () {},
            icon: const Icon(CupertinoIcons.search),
          ),
          Padding(
            padding:
                const EdgeInsets.only(right: 15, top: 12, bottom: 12, left: 15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.network(
                fit: BoxFit.cover,
                "https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png",
              ),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(68),
          //prefferedSize = 68 because it is the min value to fix overflow
          child: TabBar(
            padding: const EdgeInsets.symmetric(vertical: 10),
            indicatorColor: Colors.transparent.withOpacity(0.01),
            tabs: const [
              CustomTab(name: "Tv Shows"),
              CustomTab(name: "Movies"),
              CustomTab(name: "Categories"),
            ],
          ),
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
