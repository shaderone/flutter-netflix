import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/common_widgets/main_v_card.dart';
import 'package:netflix_clone/presentation/common_widgets/title.dart';

class TitledVCardListWidget extends StatelessWidget {
  final String listTitle;
  //temp
  final String listImg;
  const TitledVCardListWidget({
    required this.listTitle,
    required this.listImg,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MainTitle(mainTitle: listTitle, size: 18),
          const SizedBox(height: 10),
          LimitedBox(
            maxHeight: MediaQuery.of(context).size.width / 2,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              //shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: List.generate(10, (index) {
                return MainVCardWidget(
                  poster: listImg,
                  horizontalPadding: index == 0 ? 0 : 5,
                );
              }),
            ),
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
