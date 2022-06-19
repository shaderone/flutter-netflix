import 'package:flutter/material.dart';

class MainCardVWidget extends StatelessWidget {
  final double horizontalPadding;
  final String poster;
  const MainCardVWidget({
    //temp
    required this.poster,
    this.horizontalPadding = 0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: SizedBox.fromSize(
          child: Image.network(
            poster,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
