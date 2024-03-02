import 'package:bookly/feature/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_app_bar.dart';
import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: CustomAppBar(),
              ),
              FeaturedBooksListView(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text('Newest Books', style: Styles.textStyle18),
              ),
              SizedBox(
                height: 7,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: BestSellerListView(),
        ),
      ],
    );
  }
}
