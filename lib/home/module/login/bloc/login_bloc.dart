


import 'package:case3/home/bloc/bloc.dart';
import 'package:case3/home/firebase/firebase_authentication.dart';
import 'package:case3/home/firebase/firebase_helper/app_error_code.dart';
import 'package:case3/home/model/state_model.dart';
import 'package:case3/home/module/login/view_model/login_view_model.dart';

class LoginBloc extends Bloc<LoginViewModel> {
  @override
  LoginViewModel initDefaultValue() {
    return LoginViewModel(
      dataState: DataState.initial,
    );
  }

  Future<void> login(LoginType loginType) async {
    state.dataState = DataState.loading;
    emit(state);

    if (loginType == LoginType.google) {
      ResponseModel responseModel =
      await FirebaseAuthentication.authInstance.googleSignIn();
      if (responseModel.statusCode == AppErrorCode.success) {
        state.dataState = DataState.success;
      } else {
        state.dataState = DataState.failed;
      }
    }
    emit(state);
  }
}

enum LoginType {
  google,
}
