import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/presentation/common_widgets/app_bar_widget.dart';
import 'package:netflix_clone/presentation/pages/downloads/widgets/poster_widget.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenDimensions = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBarWidget(appBarTitle: "Downloads"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                children: [
                  const Icon(Icons.settings),
                  const SizedBox(width: 10),
                  Text(
                    "Smart Downloads",
                    style: GoogleFonts.montserrat(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Introducing downloads for you",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: Text(
                "We'll download a personalised selection of movies and shows for you, so there's always something to watch on your device.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.grey),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              constraints: BoxConstraints(
                maxHeight: screenDimensions.width / 1.25,
              ),
              width: screenDimensions.width,
              height: screenDimensions.width,
              //color: Colors.purple,
              child: DownloadPosterWidget(
                screenDimension: screenDimensions,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Setup"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
                onPressed: () {},
                child: const Text(
                  "See what you can download",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
