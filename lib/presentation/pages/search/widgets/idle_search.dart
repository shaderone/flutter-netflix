import 'package:flutter/material.dart';

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
        const SizedBox(height: 10),
        Flexible(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => const TopSearchListTile(),
            separatorBuilder: (context, index) => const Divider(),
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
    return ListTile(
      leading: Container(
        width: screenDimensions.width / 3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(_tempImg),
          ),
        ),
      ),
      title: const Text("Stranger Things"),
      trailing: const Icon(Icons.play_circle_outline_rounded),
    );
  }
}
