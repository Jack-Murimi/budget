import 'package:budget/controllers/static_controller.dart';
import 'package:budget/pages/add_transaction_page.dart';
import 'package:budget/pages/report_page.dart';
import 'package:budget/pages/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// My created files imports
import 'package:budget/theme/theme.dart';
import 'package:budget/pages/main_page_wrapper.dart';
import 'package:budget/pages/transactions_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Budget Demo',
      theme: lightTheme,
      darkTheme: darkTheme,
      initialBinding: BindingsBuilder(() {
        Get.put(TitleBarController());
      }),
      home: const MainPageWrapper(),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const MainPageWrapper()),
        GetPage(name: '/transactions', page: () => const TransactionsPage()),
        GetPage(
            name: '/add_transaction', page: () => const AddTransactionPage()),
        GetPage(name: '/reports', page: () => const ReportPage()),
        GetPage(name: '/settings', page: () => const SettingsPage()),
      ],
    );
  }
}
