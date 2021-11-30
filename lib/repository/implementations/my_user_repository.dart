import 'dart:io';

import 'package:movie_app/model/user.dart';
import 'package:movie_app/provider/firebase_provider.dart';
import 'package:movie_app/repository/my_user_repository.dart';

class MyUserRepositoryImp extends MyUserRepository {
  final provider = FirebaseProvider();

  @override
  Future<MyUser?> getMyUser() => provider.getMyUser();

  @override
  Future<void> saveMyUser(user, File? image) =>
      provider.saveMyUser(user, image);
}
