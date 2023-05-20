import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sigagak_flutter_app/app/routes/app_pages.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              width: Get.width,
              height: Get.height * 0.55,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/img/logo/provinsiBali.png",
                    width: 132,
                    height: 135,
                  ),
                  Text(
                    "SIGAGAK",
                    style: GoogleFonts.poppins(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                  Container(
                    width: Get.width * 0.8,
                    child: Text(
                      'subtitle'.tr,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              width: Get.width,
              height: Get.height * 0.5,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                    child: Center(
                      child: Container(
                        height: 4,
                        width: 114,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.onPrimary,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 40,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "welcome".tr,
                            style: GoogleFonts.poppins(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ),
                          Text(
                            "home_desc".tr,
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ),
                          const Expanded(
                            child: SizedBox(),
                          ),
                          TextButton(
                            onPressed: () {
                              Get.toNamed(Routes.LOGIN);
                            },
                            child: Container(
                              width: Get.width,
                              height: 55,
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.surface,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  "login".tr,
                                  style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color:
                                        Theme.of(context).colorScheme.onSurface,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Get.toNamed(Routes.REGISTER);
                            },
                            child: Container(
                              width: Get.width,
                              height: 55,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color:
                                      Theme.of(context).colorScheme.onPrimary,
                                  width: 2,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "register".tr,
                                  style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color:
                                        Theme.of(context).colorScheme.onPrimary,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 70,
            right: 30,
            child: ToggleSwitch(
              minWidth: 50.0,
              initialLabelIndex: controller.toggleValue.value,
              activeBgColor: [Theme.of(context).colorScheme.primary],
              inactiveBgColor: Theme.of(context).colorScheme.onPrimary,
              borderColor: [Theme.of(context).colorScheme.primary],
              borderWidth: 1,
              cornerRadius: 15,
              labels: const ['ID', 'EN'],
              totalSwitches: 2,
              onToggle: (index) {
                controller.changeToggleValue(index ?? 0);
              },
            ),
          ),
        ],
      ),
    );
  }
}
