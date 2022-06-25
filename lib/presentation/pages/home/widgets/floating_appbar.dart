import 'package:flutter/material.dart';

class CustomFloatingAppbar extends StatelessWidget {
  final bool innerBoxIsScrolled;
  const CustomFloatingAppbar({
    Key? key,
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
        elevation: 10,
        forceElevated: innerBoxIsScrolled,
        backgroundColor: Colors.transparent,
        leading: SizedBox(
          width: 30,
          height: 60,
          child: Image.asset("assets/logo.png"),
        ),
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
