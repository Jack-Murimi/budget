import 'package:budget/controllers/static_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPageWrapper extends StatelessWidget {
  const MainPageWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final TitleBarController titleBarController = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(titleBarController.title.value)),
      ),

      //section to display the pages
      body: const Text('sudo text'),

      //section to display the bottom navigation bar
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.home),
                onPressed: () => Get.toNamed('/'),
              ),
              IconButton(
                icon: const Icon(Icons.list),
                onPressed: () => Get.toNamed(
                  '/transactions',
                ),
              ),
              const SizedBox(width: 50), // Placeholder for FAB
              FloatingActionButton(
                child: const Icon(Icons.add),
                onPressed: () => Get.toNamed('/add_transaction'),
              ),
              const SizedBox(width: 50), // Placeholder for FAB
              IconButton(
                icon: const Icon(Icons.bar_chart),
                onPressed: () => Get.toNamed('/reports'),
              ),
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () => Get.toNamed('/settings'),
              ),
            ],
          ),
        ),
      ),

      //section to display the floating action button
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
    );
  }
}
