import 'package:dartz/dartz.dart';
import 'package:elevate_task/core/errors/failure.dart';
import 'package:elevate_task/features/home/presentation/model/products/products.model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<ProductsModel>>> getProduct();
}
