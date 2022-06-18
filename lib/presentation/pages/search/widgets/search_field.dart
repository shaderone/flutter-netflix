import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CupertinoSearchTextField(
          prefixIcon: const Icon(
            CupertinoIcons.search,
            color: Colors.grey,
            size: 24,
          ),
          backgroundColor: Colors.grey.shade800,
          style: TextStyle(color: Colors.grey.shade100),
          suffixIcon: const Icon(
            CupertinoIcons.xmark_circle_fill,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
