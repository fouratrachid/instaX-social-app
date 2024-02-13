import 'package:firebase_auth/firebase_auth.dart';
import 'package:user_repository/src/models/my_user.dart';

abstract class UserRepository {
  Stream<User?> get user;
  Future<void> signIn(String email, String password);
  Future<void> logOut();
  Future<MyUser> signUp(MyUser myUser, String password);
  Future<void> resetPassword(String email);
  //setUserData

  Future<void> setUserData(MyUser user);

  // //getMyUser
  Future<MyUser> getMyUser(String myUserId);
}
