import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
;
import '../../../../../core/utils/assets.dart';
import 'book_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      AssetsData.bookOne,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 29.17,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: const Text(
                      'Harry Potter and the Goblet of Fire',
                      style: Styles.textStyle18,
                      maxLines: 2,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'J.K. Rowling',
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text(
                        '19.99 €',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      const BookRating(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
