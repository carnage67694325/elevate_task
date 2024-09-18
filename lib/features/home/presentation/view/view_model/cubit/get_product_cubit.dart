import 'package:bloc/bloc.dart';
import 'package:elevate_task/features/home/data/repos/home_repo.dart';
import 'package:elevate_task/features/home/presentation/model/prodcut/prodcut..model.dart';
import 'package:meta/meta.dart';

part 'get_product_state.dart';

class GetProductCubit extends Cubit<GetProductState> {
  GetProductCubit(this.homeRepo) : super(GetProductInitial());
  final HomeRepo homeRepo;
  Future<void> getProducts() async {
    emit(GetProductLoading());
    var result = await homeRepo.getProduct();
    result.fold((failure) {
      emit(GetProductFailure(errMessage: failure.errMessage));
    }, (products) {
      emit(GetProductSuccess(products: products));
    });
  }
}
