import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/bloc/search/search_bloc.dart';
import 'package:netflix_clone/domain/debounce/debounce.dart';

class SearchField extends StatelessWidget {
  SearchField({Key? key}) : super(key: key);

  final _debouncer = Debouncer(milliseconds: 800);
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
          onChanged: (String inputVal) {
            if (inputVal.isEmpty) {
              BlocProvider.of<SearchBloc>(context).add(const Initialize());
              return;
            }

            _debouncer.run(
              () => BlocProvider.of<SearchBloc>(context).add(
                SearchMedia(query: inputVal),
              ),
            );
          },
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
