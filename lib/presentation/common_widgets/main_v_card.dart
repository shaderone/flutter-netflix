import 'package:flutter/material.dart';

class MainVCardWidget extends StatelessWidget {
  final double leftPadding;
  final String poster;
  const MainVCardWidget({
    //temp
    required this.poster,
    this.leftPadding = 0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: leftPadding),
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
