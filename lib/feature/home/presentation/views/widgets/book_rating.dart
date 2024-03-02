import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, required this.rating, required this.count});

  final num rating;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          rating.toString(),
          style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(
          width: 3,
        ),
        Text(
          '($count)',
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.w200,
            color: const Color(0xff979797),
          ),
        ),
      ],
    );
  }
}
