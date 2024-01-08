import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'featured_list_view_items.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        FeaturedListViewItem(),
      ],
    );
  }
}
