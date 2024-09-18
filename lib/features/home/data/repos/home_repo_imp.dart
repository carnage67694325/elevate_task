import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:elevate_task/core/errors/failure.dart';
import 'package:elevate_task/core/utils/api_service.dart';
import 'package:elevate_task/features/home/data/repos/home_repo.dart';
import 'package:elevate_task/features/home/presentation/model/prodcut/prodcut..model.dart';

class HomeRepoImp implements HomeRepo {
  final ApiService apiService;

  HomeRepoImp({required this.apiService});
  @override
  Future<Either<Failure, List<ProductsModel>>> getProduct() async {
    try {
      List<dynamic> data =
          await apiService.get(endPoints: 'products') as List<dynamic>;
      List<ProductsModel> productList = [];
      for (int i = 0; i < data.length; i++) {
        productList.add(ProductsModel.fromJson(data[i]));
      }
      return right(productList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
