import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  RxInt toggleValue = 0.obs;
  final store = GetStorage();

  @override
  void onInit() {
    toggleValue.value = store.read('language') ?? 0;
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

  void changeToggleValue(int value) {
    toggleValue.value = value;
    store.write('language', value);
    value == 0
        ? Get.updateLocale(Locale('id', 'ID'))
        : Get.updateLocale(Locale('en', 'US'));
  }
}
