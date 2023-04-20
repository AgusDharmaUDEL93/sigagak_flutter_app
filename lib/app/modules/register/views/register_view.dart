import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../components/text_field_filled.dart';
import '../../../../components/text_field_password.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 162,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Image.asset(
                  "assets/img/logo/provinsiBali.png",
                  width: 71,
                  height: 69,
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "SIGAGAK",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      child: Text(
                        "Sistem Pengaduan dan Penanganan Kasus",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        leadingWidth: Get.width,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Container(
          width: Get.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Register",
                style: GoogleFonts.poppins(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Silahkan register untuk melanjutkan!",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
              ),
              const SizedBox(
                height: 55,
              ),
              Form(
                child: Column(
                  children: [
                    TextFieldFilled(label: "Input NIK"),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFieldFilled(label: "Input Email"),
                    const SizedBox(
                      height: 20,
                    ),
                    Obx(
                      () => TextFieldPassword(
                        label: "Input Password",
                        obscureText: controller.obscureTextPass(0),
                        toggle: () => controller.changeState(0),
                        iconStatus: controller.iconStatus(0),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Obx(
                      () => TextFieldPassword(
                        label: "Ulangi Password",
                        obscureText: controller.obscureTextPass(1),
                        toggle: () => controller.changeState(1),
                        iconStatus: controller.iconStatus(1),
                      ),
                    ),
                    const SizedBox(
                      height: 55,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        height: 55,
                        width: Get.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        child: Center(
                          child: Text(
                            "Register",
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).colorScheme.onPrimary,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
