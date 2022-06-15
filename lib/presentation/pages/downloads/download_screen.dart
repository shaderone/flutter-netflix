import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/presentation/common_widgets/app_bar_widget.dart';
import 'package:netflix_clone/presentation/pages/downloads/widgets/poster_widget.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenDimension = MediaQuery.of(context).size;
    final posters = [
      "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/5tcuowV4HZRxxvDiWn4bmumuZSk.jpg",
      "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/wrCVHdkBlBWdJUZPvnJWcBRuhSY.jpg",
      "https://www.themoviedb.org/t/p/w300_and_h450_bestv2/qgrk7r1fV4IjuoeiGS5HOhXNdLJ.jpg",
    ];
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
                    style: GoogleFonts.mukta(),
                  ),
                ],
              ),
            ),
            const Text("Introducing downloads for you"),
            const Text(
                "We'll download a personalised selection of movies and shows for you, so there's always something to watch on your device."),
            //stack display
            SizedBox(
              width: screenDimension.width,
              height: screenDimension.width,
              //color: Colors.amber.shade300,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: screenDimension.width / 2.5,
                    backgroundColor: Colors.grey,
                  ),
                  DownloadsPosterWidget(
                    screenDimension: screenDimension,
                    posters: posters,
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Setup"),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
              onPressed: () {},
              child: const Text(
                "See what you can download",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
