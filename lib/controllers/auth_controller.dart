import 'dart:async';

import 'package:get/get.dart';
import 'package:movie_app/navigation/routes.dart';
import 'package:movie_app/repository/auth_repository.dart';

enum AuthState {
  signedOut,
  signedIn,
}

class AuthController extends GetxController {
  final _authRepository = Get.find<AuthRepository>();
  late StreamSubscription _authSubscription;

  final Rx<AuthState> authState = Rx(AuthState.signedOut);
  final Rx<AuthUser?> authUser = Rx(null);

  @override
  void onInit() async {
    // Just for testing. Allows the splash screen to be shown a few seconds
    await Future.delayed(const Duration(seconds: 3));
    _authSubscription =
        _authRepository.onAuthStateChanged.listen(_authStateChanged);
    super.onInit();
  }

  void _authStateChanged(AuthUser? user) {
    if (user == null) {
      authState.value = AuthState.signedOut;
      Get.offAllNamed(Routes.signInEmail);
    } else {
      authState.value = AuthState.signedIn;
      Get.offAllNamed(Routes.home);
    }
    authUser.value = user;
  }

  Future<void> signOut() async {
    await _authRepository.signOut();
  }

  @override
  void onClose() {
    _authSubscription.cancel();
    super.onClose();
  }
}
