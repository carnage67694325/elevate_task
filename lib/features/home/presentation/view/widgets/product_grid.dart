import 'dart:math';

import 'package:elevate_task/core/widgets/error_text.dart';
import 'package:elevate_task/core/widgets/loading.dart';
import 'package:elevate_task/features/home/presentation/view/view_model/cubit/get_product_cubit.dart';
import 'package:elevate_task/features/home/presentation/view/widgets/prodcut_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetProductCubit, GetProductState>(
      builder: (context, state) {
        if (state is GetProductSuccess) {
          return SliverGrid.builder(
            itemCount: 8,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 0,
              crossAxisSpacing: 0,
              childAspectRatio: 0.7,
            ),
            itemBuilder: (context, index) {
              return ProductCard(
                product: state.products[index],
              );
            },
          );
        } else if (state is GetProductFailure) {
          return SliverToBoxAdapter(
              child: ErrorText(errMessage: state.errMessage));
        } else {
          return const SliverToBoxAdapter(child: Loading());
        }
      },
    );
  }
}
