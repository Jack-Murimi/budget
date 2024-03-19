import 'package:flutter/material.dart';

class RecordsPage extends StatelessWidget {
  const RecordsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Recods'),
        Icon(
          Icons.home,
          size: 50,
        )
      ],
    );
  }
}
