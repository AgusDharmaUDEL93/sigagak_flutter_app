import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  //TODO: Implement RegisterController

  final count = 0.obs;
  var _isVisible = [false.obs, false.obs];
  String? _passVal;
  final formkey = GlobalKey<FormState>();

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

  bool obscureTextPass(int index) {
    return _isVisible[index].value ? false : true;
  }

  Widget iconStatus(int index) {
    return _isVisible[index].value
        ? const Icon(Icons.visibility_off)
        : const Icon(Icons.visibility);
  }

  String? passValid(String value) {
    _passVal = value;
    if (value.length < 8) {
      return 'Must be more than 8 charater';
    }
    return null;
  }

  String? emailValid(String value) {
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(p);
    if (!regExp.hasMatch(value)) {
      return "Please used the correct email";
    }
    return null;
  }

  String? passConfirmValid(String value) {
    if (value != _passVal) {
      return "Confirm password not matched";
    }
    if (value.length < 8) {
      return 'Must be more than 8 charater';
    }
    return null;
  }

  void changeState(int index) {
    _isVisible[index].value = !_isVisible[index].value;
  }
}
