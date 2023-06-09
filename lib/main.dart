import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../resources/resources.dart';

import 'app/routes/app_pages.dart';

void main() async {
  await GetStorage.init();
  final store = GetStorage();
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      translations: Languange(),
      locale:
          store.read('language') == 1 ? Locale('en', 'US') : Locale('id', 'ID'),
      getPages: AppPages.routes,
      theme: ThemeData(colorScheme: color),
    ),
  );
}
