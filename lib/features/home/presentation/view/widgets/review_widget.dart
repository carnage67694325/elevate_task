import 'dart:ffi';

import 'package:elevate_task/features/home/presentation/model/products/products.model.dart';
import 'package:flutter/material.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({super.key, required this.product});
  final ProductsModel product;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('Review'),
        const SizedBox(
          width: 1,
        ),
        Text('(${product.rating!.rate})'),
        const SizedBox(
          width: 3,
        ),
        const Icon(
          size: 18,
          Icons.star,
          color: Colors.yellow,
        )
      ],
    );
  }
}
