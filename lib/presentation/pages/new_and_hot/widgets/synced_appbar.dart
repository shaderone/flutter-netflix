import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/colors.dart';

class SyncedAppbar extends StatelessWidget {
  final String title;
  const SyncedAppbar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      title: Text(
        title,
        style: GoogleFonts.montserrat(
          fontWeight: FontWeight.w800,
          fontSize: 28,
        ),
      ),
      actions: [
        IconButton(
          splashRadius: 20,
          iconSize: 32,
          onPressed: () {},
          icon: const Icon(Icons.cast),
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
      bottom: TabBar(
        padding: const EdgeInsets.symmetric(vertical: 10),
        isScrollable: true,
        labelColor: Colors.black,
        unselectedLabelColor: Colors.white,
        indicator: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        tabs: const [
          Tab(
            text: "🍿 Coming soon",
          ),
          Tab(
            text: "🔥 Everyone's Watching",
          ),
        ],
      ),
    );
  }
}
