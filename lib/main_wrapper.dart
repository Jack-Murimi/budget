import 'package:budget/controllers/main_wrapper_controller.dart';
import 'package:budget/pages/home_page.dart';
import 'package:budget/pages/record_page.dart';
import 'package:budget/pages/reports_page.dart';
import 'package:budget/pages/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class MainWrapper extends StatelessWidget {
  MainWrapper({super.key});

  final MainWrapperController controller = Get.put(MainWrapperController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text(controller.pageTitle.value)),
      ),
      body: PageView(
        controller: controller.pageController,
        physics: const BouncingScrollPhysics(),
        children: const [
          HomePage(),
          RecordsPage(),
          ReportsPage(),
          SettingsPage(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _bottomAppBarItem(context,
                  icon: Icons.home, page: 0, label: 'Home'),
              _bottomAppBarItem(context,
                  icon: Icons.receipt_rounded, page: 1, label: 'records'),
              _bottomAppBarItem(context,
                  icon: Icons.bar_chart_rounded, label: 'Reports', page: 2),
              _bottomAppBarItem(context,
                  icon: Icons.settings_suggest_rounded,
                  page: 3,
                  label: 'Settings')
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.toNamed('/createTransaction');
          },
          child: const Icon(Icons.add)),
    );
  }

  Widget _bottomAppBarItem(BuildContext context,
      {required icon, required page, required label}) {
    return ZoomTapAnimation(
      onTap: () => controller.goToPage(page),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [Icon(icon), Text(label)],
      ),
    );
  }
}
