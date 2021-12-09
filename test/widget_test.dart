// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:get_test/get_test.dart';
import 'package:movie_app/pages/signin/SignIn.dart';
import 'package:get/get.dart';
import 'package:movie_app/pages/signup/SignUp.dart';

void main() {
  getTest(
    "test description",
    widgetTest: (tester) async {
      expect('/', Get.currentRoute);

      Get.to(SignIn());
      expect('/signInEmail', Get.currentRoute);

      Get.to(SignUp());
      expect('/createAccount', Get.currentRoute);

      Get.back();
      expect('/signInEmail', Get.currentRoute);
    },
  );
  testWidgets('Login has a title', (WidgetTester tester) async {
    // Test code goes here.
    await tester.pumpWidget(SignIn());
    final titleLogin = find.text('Login');

    expect(titleLogin, findsOneWidget);
  });
}
