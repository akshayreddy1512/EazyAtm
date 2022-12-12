import 'package:case3/home/model/state_model.dart';
import 'package:case3/home/model/user_model.dart';


class UserListViewModel {
  DataState dataState;
  List<UserModel> userList;

  UserListViewModel({
    required this.dataState,
    required this.userList,
  });
}
