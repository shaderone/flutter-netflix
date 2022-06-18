import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const _tempImg =
    "https://www.themoviedb.org/t/p/w355_and_h200_multi_faces/56v2KjBlU4XaOv9rVYEQypROD7P.jpg";

class IdleSearchScreen extends StatelessWidget {
  const IdleSearchScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Top Searches",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
        const SizedBox(height: 20),
        Flexible(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => const TopSearchListTile(),
            separatorBuilder: (context, index) => const SizedBox(height: 15),
            itemCount: 25,
          ),
        ),
      ],
    );
  }
}

class TopSearchListTile extends StatelessWidget {
  const TopSearchListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenDimensions = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: screenDimensions.width / 2.75,
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: const Image(
                image: NetworkImage(_tempImg),
                fit: BoxFit.fill, // use this
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            "Stranger Things",
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            CupertinoIcons.play_circle,
            size: 50,
          ),
        )
      ],
    );
  }
}
