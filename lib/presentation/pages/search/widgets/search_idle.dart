import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/presentation/common_widgets/title.dart';

const _tempImg =
    "https://www.themoviedb.org/t/p/w355_and_h200_multi_faces/56v2KjBlU4XaOv9rVYEQypROD7P.jpg";

class IdleSearchWidget extends StatelessWidget {
  const IdleSearchWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: index == 0 ? true : false,
            child: const MainTitle(mainTitle: "Top Searches"),
          ),
          Visibility(
            visible: index == 0 ? true : false,
            child: const SizedBox(height: 20),
          ),
          const TopSearchListItem(),
        ],
      ),
      separatorBuilder: (context, index) => const SizedBox(height: 15),
      itemCount: 25,
    );
  }
}

class TopSearchListItem extends StatelessWidget {
  const TopSearchListItem({Key? key}) : super(key: key);

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
        Padding(
          padding: const EdgeInsets.only(bottom: 15, right: 10),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.play_circle,
              size: 45,
            ),
          ),
        )
      ],
    );
  }
}
