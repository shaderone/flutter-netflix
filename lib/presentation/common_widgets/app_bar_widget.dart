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
          onPressed: () {},
          icon: const Icon(Icons.cast),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10, top: 15, bottom: 15),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
