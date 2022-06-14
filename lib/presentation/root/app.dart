import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/root/widgets/bottom_nav.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            "home screen",
          ),
        ),
      ),
      bottomNavigationBar: BottomNavWidget(),
    );
  }
}
