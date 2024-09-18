import 'package:dio/dio.dart';
import 'package:elevate_task/core/utils/api_service.dart';
import 'package:elevate_task/features/home/data/repos/home_repo.dart';
import 'package:elevate_task/features/home/data/repos/home_repo_imp.dart';
import 'package:elevate_task/features/home/presentation/view/home_view.dart';
import 'package:elevate_task/features/home/presentation/view/view_model/cubit/get_product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          GetProductCubit(HomeRepoImp(apiService: ApiService(Dio()))),
      child: const MaterialApp(
        home: HomeView(),
      ),
    );
  }
}
