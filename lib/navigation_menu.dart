import 'package:bimnext_app/features/shop/screens/home/home.dart';
import 'package:bimnext_app/util/constants/colors.dart';
import 'package:bimnext_app/util/helpers/pricing_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(() => NavigationBar(
              height: 80,
              elevation: 0,
              selectedIndex: controller.selectedIndex.value,
              onDestinationSelected: (index) =>
                  controller.selectedIndex.value = index,
              backgroundColor: dark ? TColors.black : Colors.white,
              indicatorColor: dark ? TColors.white.withOpacity(0.1) : TColors.black.withOpacity(0.1),
              destinations: const [
                NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
                NavigationDestination(
                    icon: Icon(Iconsax.cloud), label: 'Cloud'),
                NavigationDestination(
                    icon: Icon(Iconsax.message), label: 'Chat'),
                NavigationDestination(
                    icon: Icon(Iconsax.notification), label: 'Notifications'),
                NavigationDestination(
                    icon: Icon(Iconsax.user), label: 'Profile')
              ])),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    Container(color: Colors.purple),
    Container(color: Colors.orange),
    Container(color: Colors.blueAccent),
    Container(color: Colors.redAccent)
  ];
}
