import 'package:get/get.dart';
import 'package:movie_app/ui/theme/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends GetxController {
  late SharedPreferences preferences;

  String prefkey = "Dark";
  late Rx<bool> _themedark = false.obs;

  bool get themedark => _themedark.value;

  void selecciontema() {
    _themedark.value ? ligthTheme() : darkTheme();
    print(_themedark.value);
  }

  void ligthTheme() {
    Get.changeTheme(MyTheme.ligthTheme);
    preferences.setBool(prefkey, false);
    _themedark.value = false;
  }

  void darkTheme() {
    Get.changeTheme(MyTheme.darkTheme);
    preferences.setBool(prefkey, true);
    _themedark.value = true;
  }

  @override
  void onInit() {
    cargarPreferencias().then((value) => actualizatema());

    super.onInit();
  }

  void actualizatema() {
    bool? isDarkMode = preferences.getBool(prefkey);
    _themedark.value = true;
    if (isDarkMode == null) {
      preferences.setBool(prefkey, false);
      isDarkMode = false;
      _themedark.value = false;
    }

    (isDarkMode) ? darkTheme() : ligthTheme();
  }

  Future<void> cargarPreferencias() async {
    preferences = await Get.putAsync<SharedPreferences>(
        () async => await SharedPreferences.getInstance());
  }
}
