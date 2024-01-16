import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 3,
        ),
        Text(
          '4.8',
          style: Styles.textStyle16.copyWith(
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(
          width: 3,
        ),
        Text(
          '(2390)',
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.w200,
            color: const Color(0xff979797),
          ),
        ),
      ],
    );
  }
}
