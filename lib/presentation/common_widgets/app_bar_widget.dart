import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarWidget extends StatelessWidget {
  final String appBarTitle;
  const AppBarWidget({required this.appBarTitle, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        appBarTitle,
        style: GoogleFonts.mukta(
          fontWeight: FontWeight.w800,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.cast),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.cast),
        ),
        //Container(
        //  width: 15,
        //  height: 15,
        //  color: Colors.blueAccent,
        //),
      ],
    );
  }
}
