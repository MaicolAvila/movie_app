import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Controllerauth extends GetxController {
  final FirebaseAuth auth = FirebaseAuth.instance;
  late Rx<dynamic> _usuarior = "Sin Registro".obs;
  late Rx<dynamic> _uid = "".obs;
  late Rx<dynamic> _name = "".obs;
  late Rx<dynamic> _photo = "".obs;

  String get userf => _usuarior.value;
  String get uid => _uid.value;
  String get name => _name.value;
  String get photo => _photo.value;

  Future<void> registrarEmail(dynamic _email, dynamic _passw) async {
    print("llego al metodo");
    print("usuario $_email");
    print("contraseña $_passw");
    try {
      UserCredential usuario = await auth.createUserWithEmailAndPassword(
          email: _email, password: _passw);

      _usuarior.value = usuario.user!.email;
      _uid.value = usuario.user!.uid;

      _name.value = usuario.user!.email;
      _photo.value =
          'https://cdn.icon-icons.com/icons2/1508/PNG/512/systemusers_104569.png';

      print(usuario);
      await guardarusuario(_usuarior.value, _passw)
          .then((value) => ingresarEmail(usuario, _passw));

      return Future.value(true);
      // return Future.value(true);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return Future.error('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('Correo ya Existe');

        return Future.error('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> ingresarEmail(dynamic email, dynamic pass) async {
    try {
      UserCredential usuario =
          await auth.signInWithEmailAndPassword(email: email, password: pass);

      _usuarior.value = usuario.user!.email;
      _uid.value = usuario.user!.uid;
      _name.value = usuario.user!.email;
      _photo.value =
          'https://cdn.icon-icons.com/icons2/1508/PNG/512/systemusers_104569.png';

      //    _photo.value = usuario.user!.photoURL;
      await guardarusuario(_usuarior.value, pass);
      print(usuario);
      return Future.value(true);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('Correo no encontrado');
        return Future.error('user-not-found');
      } else if (e.code == 'wrong-password') {
        print('Password incorrecto');
        return Future.error('wrong-password');
      }
    }
  }

  Future<void> ingresarGoogle() async {
    // Trigger the authentication flow

    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
// Obtain the auth details from the request

      final GoogleSignInAuthentication googleAuth =
          await googleUser!.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Once signed in, return the UserCredential
      UserCredential usuario =
          await FirebaseAuth.instance.signInWithCredential(credential);

      _usuarior.value = usuario.user!.email;
      _uid.value = usuario.user!.uid;

      _name.value = usuario.user!.displayName;
      _photo.value = usuario.user!.photoURL;

      return Future.value(true);
    } catch (e) {
      return Future.error('Error');
    }
  }

  Future<void> guardarusuario(datos, passw) async {
    Future<SharedPreferences> _localuser = SharedPreferences.getInstance();
    final SharedPreferences localuser = await _localuser;
    localuser.setString('email', datos);
    localuser.setString('clave', passw);
    print(localuser.getString('usuario'));
  }

  Future<void> signOut() async {
    await GoogleSignIn().signOut();
    await FirebaseAuth.instance.signOut();
    Get.toNamed('/signInEmail');
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.clear();
  }
}
