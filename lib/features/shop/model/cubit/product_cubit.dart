import 'package:bloc/bloc.dart';
import 'package:e_commerce/features/shop/model/product_model/product_model.dart';
import 'package:e_commerce/features/shop/model/repo.dart';
import 'package:e_commerce/utils/constants/api_constants.dart';
import 'package:e_commerce/utils/network/remote/dio_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());

  late ProductModel productModel;
  WebServices webServices = WebServices();

  void getAllCharacters() {
    webServices.getData(url: getAllProduct).then(
      (products) {
        emit(ProductSuccessState());

        //print(characters);
      },
    ).catchError((error) {
      emit(ProductFailureState(error.toString()));
    });
  }
}
