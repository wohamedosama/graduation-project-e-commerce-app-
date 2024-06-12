import 'package:e_commerce/constants.dart';
import 'package:e_commerce/features/authentication/model/cubit/register_cubit/register_state.dart';
import 'package:e_commerce/utils/constants/api_constants.dart';
import 'package:e_commerce/utils/network/remote/dio_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:e_commerce/features/authentication/model/user_model/user_model.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  static RegisterCubit get(context) => BlocProvider.of(context);
  late UserLoginModel userLoginModel;
  WebServices webServices = WebServices();

  void userRegister({
    required String email,
    required String password,
    //required String phone,
    required String displayName,
  }) {
    emit(RegisterLoadingState());
    webServices
        .postData(
      url: register,
      data: {
        'email': email,
        'password': password,
        'displayName': displayName,
      },
      token: token,
    )
        .then((value) {
      userLoginModel = UserLoginModel.fromJson(value.data);
      print(userLoginModel.token);

      emit(RegisterSuccessState(userLoginModel));
    }).catchError((error) {
      emit(
        RegisterFailureState(error.toString()),
      );
    });
  }

  // void createUser({
  //   required String email,
  //   required String uId,
  //   required String phone,
  //   required String name,
  // }) {
  //   CreateUserModel model = CreateUserModel(
  //     email: email,
  //     phone: phone,
  //     uId: uId,
  //     name: name,
  //   );
  //   FirebaseFirestore.instance
  //       .collection('users')
  //       .doc(uId)
  //       .set(model.toMap())
  //       .then(
  //     (value) {
  //       emit(CreateUserSuccessState());
  //     },
  //   ).catchError(
  //     (error) {
  //       emit(CreateUserFailureState(error.toString()));
  //     },
  //   );
  // }

  bool isPassword = true;
  IconData suffix = Iconsax.eye_slash;

  void changePasswordVisibility() {
    isPassword = !isPassword;
    suffix = isPassword ? Iconsax.eye_slash : Icons.visibility_outlined;

    emit(ChangePasswordVisibility());
  }
}
