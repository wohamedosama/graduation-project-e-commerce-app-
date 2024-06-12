part of 'product_cubit.dart';

@immutable
sealed class ProductState {}

final class ProductInitial extends ProductState {}

class ProductLoadingState extends ProductState {}

class ProductSuccessState extends ProductState {
  // final List<ProductModel> productModel;
  // ProductSuccessState(this.productModel);
}

class ProductFailureState extends ProductState {
  final String error;
  ProductFailureState(this.error);
}
