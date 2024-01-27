import 'package:bookly/feature/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_search_textfield.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomSearchTextField(),
        SizedBox(
          height: 16,
        ),
        Text('Best Seller', style: Styles.textStyle18),
        SizedBox(
          height: 16,
        ),
        Expanded(child: SearchResultListView()),
      ],
    );
  }
}
