import 'package:flutter/material.dart';
import 'package:netflix_clone/presentation/pages/new_and_hot/widgets/coming_soon_widget.dart';
import 'package:netflix_clone/presentation/pages/new_and_hot/widgets/synced_appbar.dart';
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
            _buildComingSoon(),
            _buildEveryonesWatching(),
          ],
        ),
        bottomNavigationBar: const BottomNavWidget(),
      ),
    );
  }

  Widget _buildComingSoon() {
    return ListView(
      shrinkWrap: true,
      physics: const AlwaysScrollableScrollPhysics(
        parent: BouncingScrollPhysics(),
      ),
      padding: const EdgeInsets.symmetric(vertical: 10),
      children: const [NewAndHotDatedContent()],
    );
  }

  Widget _buildEveryonesWatching() {
    return ListView(
      shrinkWrap: true,
      physics: const AlwaysScrollableScrollPhysics(
        parent: BouncingScrollPhysics(),
      ),
      padding: const EdgeInsets.symmetric(vertical: 10),
      children: const [NewAndHotContent()],
    );
  }
}
