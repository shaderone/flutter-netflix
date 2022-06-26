import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/colors.dart';
import 'package:netflix_clone/presentation/pages/new_and_hot/synced_appbar.dart';
import 'package:netflix_clone/presentation/root/widgets/bottom_nav.dart';

class NewAndHotScreen extends StatelessWidget {
  const NewAndHotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: SyncedAppbar(
            title: "New & Hot",
          ),
        ),
        body: TabBarView(
          children: [
            _buildComingSoon(context),
            _buildEveryonesWatching(),
          ],
        ),
        bottomNavigationBar: const BottomNavWidget(),
      ),
    );
  }

  Widget _buildComingSoon(context) {
    //final screenDimension = MediaQuery.of(context).size;
    return ListView();
  }

  Widget _buildEveryonesWatching() {
    return ListView();
  }
}
