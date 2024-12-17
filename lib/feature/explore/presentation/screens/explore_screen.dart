import 'package:flutter/material.dart';

import '../views/search_bar_view.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        children: [
          SearchBarView(),
        ],
      ),
    );
  }
}
