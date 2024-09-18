import 'package:elevate_task/features/home/presentation/view/widgets/prodcut_card.dart';
import 'package:elevate_task/features/home/presentation/view/widgets/product_grid.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        ProductGrid(),
      ],
    );
  }
}
