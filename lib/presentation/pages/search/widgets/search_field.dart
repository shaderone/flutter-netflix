import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/bloc/search/search_bloc.dart';
import 'package:netflix_clone/domain/debounce/debounce.dart';

class SearchField extends StatelessWidget {
  final _debouncer = Debouncer(milliseconds: 800);
  final TextEditingController _searchController = TextEditingController();
  SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CupertinoSearchTextField(
          controller: _searchController,
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
          onChanged: (String inputVal) {
            if (inputVal.isEmpty) {
              return;
            }
            _debouncer.run(
              () => BlocProvider.of<SearchBloc>(context).add(
                SearchMedia(query: inputVal),
              ),
            );
            //log(inputVal);
            //log(_searchController.text);
          },
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
