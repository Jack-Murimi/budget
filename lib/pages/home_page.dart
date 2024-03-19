import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('HomePage'),
        Icon(
          Icons.home,
          size: 50,
        )
      ],
    );
  }
}
