import 'dart:math';

import 'package:elevate_task/features/home/presentation/view/widgets/prodcut_card.dart';
import 'package:flutter/material.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: 8,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 0,
        crossAxisSpacing: 0,
        childAspectRatio: 0.7,
      ),
      itemBuilder: (context, index) {
        return const ProductCard();
      },
    );
  }
}
