import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Primary",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: Get.width,
                height: 50,
                color: Theme.of(context).colorScheme.primary,
                child: Center(
                  child: Text(
                    "OnPrimary",
                    style: TextStyle(
                      fontSize: 20,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Primary Container",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: Get.width,
                height: 50,
                color: Theme.of(context).colorScheme.primaryContainer,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Secondary",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: Get.width,
                height: 50,
                color: Theme.of(context).colorScheme.secondary,
                child: Center(
                  child: Text(
                    "OnPrimary",
                    style: TextStyle(
                      fontSize: 20,
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Secondary Container",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: Get.width,
                height: 50,
                color: Theme.of(context).colorScheme.secondaryContainer,
              ),
              const SizedBox(
                height: 10,
              ),
              Obx(
                () => Text(
                  controller.count.toString(),
                  style: const TextStyle(fontSize: 30),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () => {controller.increment()},
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: const Text(
                    "Count",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
