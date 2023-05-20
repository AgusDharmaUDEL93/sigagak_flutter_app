import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  final count = 0.obs;
  var _isVisible = false.obs;
  var formKey = GlobalKey<FormState>();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  bool obscureTextPass() {
    return _isVisible.value ? false : true;
  }

  Widget iconStatus() {
    return _isVisible.value
        ? Icon(Icons.visibility_off)
        : Icon(Icons.visibility);
  }

  void changeState() {
    _isVisible.value = !_isVisible.value;
  }

  String? validation(String value) {
    if (value.length < 8) {
      return 'Must be more than 8 charater';
    }
    return null;
  }

  void submit() {
    formKey.currentState!.validate();
  }
}
