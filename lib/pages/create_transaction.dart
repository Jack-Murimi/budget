import 'package:budget/tabs/cash_in_tab.dart';
import 'package:budget/tabs/cash_out_tab.dart';
import 'package:budget/tabs/cash_transfer_tab.dart';
import 'package:flutter/material.dart';

class CreateTransaction extends StatelessWidget {
  const CreateTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Add Transation'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings_sharp,
                color: Theme.of(context).colorScheme.primary,
              ),
            )
          ],
        ),
        body: const Column(
          children: [
            TabBar(
              tabs: [
                Tab(text: 'Cash In'),
                Tab(text: 'Cash out'),
                Tab(text: 'Transfer'),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: TabBarView(
                children: [
                  CashInTab(),
                  CashOutTab(),
                  CashTransferTab(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
