import 'package:case3/home/model/state_model.dart';
import 'package:case3/home/model/user_model.dart';


class UserDetailViewModel {
  DataState dataState;
  UserModel? user;

  UserDetailViewModel({
    required this.dataState,
     this.user,
  });
}
