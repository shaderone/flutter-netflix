import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/root/widgets/bottom_nav.dart';

class NewAndHotScreen extends StatelessWidget {
  const NewAndHotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("New and hot page"),
      ),
      bottomNavigationBar: BottomNavWidget(),
    );
  }
}
