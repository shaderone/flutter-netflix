import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchTitle extends StatelessWidget {
  final String searchTitle;
  const SearchTitle({
    required this.searchTitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      searchTitle,
      style: GoogleFonts.montserrat(
        fontWeight: FontWeight.bold,
        fontSize: 28,
      ),
    );
  }
}
