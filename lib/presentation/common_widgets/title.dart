import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainTitle extends StatelessWidget {
  final String mainTitle;
  const MainTitle({
    required this.mainTitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      mainTitle,
      style: GoogleFonts.montserrat(
        fontWeight: FontWeight.bold,
        fontSize: 28,
      ),
    );
  }
}
