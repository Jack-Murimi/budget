import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainWrapperController extends GetxController {
  late PageController pageController;

  RxInt currentPage = 0.obs;
  RxString pageTitle = 'HomePage'.obs;

  void goToPage(int page) {
    currentPage.value = page;
    pageController.animateToPage(page,
        duration: const Duration(milliseconds: 300), curve: Curves.bounceInOut);
    if (page == 1) {
      pageTitle.value = 'All Transactions';
    } else if (page == 2) {
      pageTitle.value = 'Reports';
    } else if (page == 3) {
      pageTitle.value = 'Settings';
    } else {
      pageTitle.value = 'Home';
    }
  }

  @override
  void onInit() {
    pageController = PageController(initialPage: 0);
    super.onInit();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
