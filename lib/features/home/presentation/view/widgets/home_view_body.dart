import 'package:elevate_task/core/widgets/error_text.dart';
import 'package:elevate_task/core/widgets/loading.dart';
import 'package:elevate_task/features/home/presentation/view/view_model/cubit/get_product_cubit.dart';
import 'package:elevate_task/features/home/presentation/view/widgets/prodcut_card.dart';
import 'package:elevate_task/features/home/presentation/view/widgets/product_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
