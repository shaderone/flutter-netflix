import 'package:flutter/material.dart';

ValueNotifier<int> currentNavIndexNotifier = ValueNotifier(0);

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: currentNavIndexNotifier,
        builder: (BuildContext context, int newBottomNavIndex, Widget? _) {
          return BottomNavigationBar(
            onTap: (selectedNavIndex) =>
                currentNavIndexNotifier.value = selectedNavIndex,
            currentIndex: newBottomNavIndex,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.video_collection), label: "New and Hot"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.emoji_emotions_outlined),
                  label: "Fast Laughs"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.arrow_circle_down_rounded),
                  label: "Downloads"),
            ],
          );
        });
  }
}
