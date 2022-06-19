import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainTitle extends StatelessWidget {
  final String mainTitle;
  final double size;
  const MainTitle({
    required this.mainTitle,
    this.size = 28,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      mainTitle,
      style: GoogleFonts.montserrat(
        fontWeight: FontWeight.bold,
        fontSize: size,
      ),
    );
  }
}
