part of 'get_product_cubit.dart';

@immutable
sealed class GetProductState {}

final class GetProductInitial extends GetProductState {}

final class GetProductLoading extends GetProductState {}

final class GetProductSuccess extends GetProductState {
  final List<ProductsModel> products;

  GetProductSuccess({required this.products});
}

final class GetProductFailure extends GetProductState {
  final String errMessage;

  GetProductFailure({required this.errMessage});
}
