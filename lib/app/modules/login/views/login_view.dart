import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../components/text_field_filled.dart';
import '../../../../components/text_field_password.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
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
                "Login",
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
                "Silahkan login untuk melanjutkan!",
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
                    Obx(
                      () => TextFieldPassword(
                        label: "Input Password",
                        obscureText: controller.obscureTextPass(),
                        toggle: controller.changeState,
                        iconStatus: controller.iconStatus(),
                      ),
                    ),
                    Container(
                      width: Get.width,
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          Get.toNamed("/home");
                        },
                        child: Text(
                          "Lupa password ?",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
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
                            "Login",
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
