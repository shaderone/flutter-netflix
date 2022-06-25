import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/colors.dart';

class AppBarWidget extends StatelessWidget {
  final String appBarTitle;
  const AppBarWidget({required this.appBarTitle, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      title: Text(
        appBarTitle,
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
    );
  }
}
