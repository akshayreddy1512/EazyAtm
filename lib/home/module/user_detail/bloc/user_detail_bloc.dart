import 'package:case3/home/bloc/bloc.dart';
import 'package:case3/home/firebase/firebase_firestore.dart';
import 'package:case3/home/firebase/firebase_helper/app_error_code.dart';
import 'package:case3/home/helpers/extension.dart';
import 'package:case3/home/model/state_model.dart';
import 'package:case3/home/model/user_model.dart';
import 'package:case3/home/module/user_detail/view_model/user_detail_model.dart';

class UserDetailBloc extends Bloc<UserDetailViewModel> {
  @override
  UserDetailViewModel initDefaultValue() {
    return UserDetailViewModel(
      dataState: DataState.initial,
    );
  }

  Future<void> fetchUserDetail(String userId) async {
    state.dataState = DataState.loading;
    emit(state);
    ResponseModel responseModel =
    await FirebaseStore.storeInstance.fetchUserDetail(userId);
    if (responseModel.statusCode == AppErrorCode.success) {
      state.user = responseModel.data as UserModel;
      state.dataState = DataState.success;
      emit(state);
      return;
    }

    state.dataState = DataState.failed;
    emit(state);
  }
}