import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sigagak_flutter_app/app/modules/dashboard/views/dshome_view.dart';
import 'package:sigagak_flutter_app/app/modules/dashboard/views/dsinformation_view.dart';
import 'package:sigagak_flutter_app/app/modules/dashboard/views/dsprofile_view.dart';

class DashboardController extends GetxController {
  //TODO: Implement DashboardController

  RxInt selectedIndex = 0.obs;
  List<Widget> dashboardWg = [
    DsHome(),
    DsInformation(),
    DsProfile(),
  ];

  void changeSelectedIndex(int index) {
    selectedIndex.value = index;
  }

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
}
