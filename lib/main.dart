import 'package:budget/main_wrapper.dart';
import 'package:budget/pages/create_transaction.dart';
import 'package:budget/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => MainWrapper()),
        GetPage(
            name: '/createTransaction', page: () => const CreateTransaction()),
      ],
    );
  }
}
