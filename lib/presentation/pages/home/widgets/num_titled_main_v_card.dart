import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors.dart';
import 'package:netflix_clone/presentation/common_widgets/main_v_card.dart';
import 'package:netflix_clone/presentation/common_widgets/title.dart';

class NumTitledVCardListWidget extends StatelessWidget {
  final String listTitle;
  //temp
  final String listImg;
  const NumTitledVCardListWidget({
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
                return Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Row(
                      children: [
                        const SizedBox(width: 30),
                        MainVCardWidget(
                          poster: listImg,
                        ),
                      ],
                    ),
                    Positioned(
                      top: 85,
                      right: 100,
                      child: Stack(
                        children: [
                          Text(
                            "${index + 1}",
                            style: TextStyle(
                              fontSize: 120,
                              fontWeight: FontWeight.w700,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 5
                                ..color = Colors.white,
                            ),
                          ),
                          Text(
                            '${index + 1}',
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 120,
                              color: backgroundColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
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
