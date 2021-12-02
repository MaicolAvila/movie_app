import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessagesController extends GetxController {
  final nameController = TextEditingController();
  final bodyController = TextEditingController();

  getMessage() async {
    var message = {nameController.text, bodyController};
    return message;
  }

  saveMyUser() async {
    // isSaving.value = true;
    // final uid = Get.find<AuthController>().authUser.value!.uid;
    // final name = nameController.text;
    // final lastName = lastNameController.text;
    // final age = int.tryParse(ageController.text) ?? 0;
    // final newUser = MyUser(uid, name, lastName, age, image: user.value?.image);
    // user.value = newUser;

    // // For testing add delay
    // await Future.delayed(const Duration(seconds: 3));
    // await _userRepository.saveMyUser(newUser, pickedImage.value);
    // isSaving.value = false;
  }
}
