import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/feature/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

import 'book_rating.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 33.5),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .17),
            child: const CustomBookImage(),
          ),
          const SizedBox(
            height: 18.5,
          ),
          const Text(
            'Atomic Habits',
            style: Styles.textStyle30,
          ),
          Opacity(
            opacity: .7,
            child: Text(
              'James Clear',
              style: Styles.textStyle18.copyWith(
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          const SizedBox(
            height: 23.5,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BookRating(),
            ],
          ),
        ],
      ),
    );
  }
}
