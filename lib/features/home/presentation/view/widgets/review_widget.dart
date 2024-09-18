import 'dart:ffi';

import 'package:flutter/material.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text('Review'),
        SizedBox(
          width: 1,
        ),
        Text('(4.6)'),
        SizedBox(
          width: 3,
        ),
        Icon(
          size: 18,
          Icons.star,
          color: Colors.yellow,
        )
      ],
    );
  }
}
