import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Providers/data_provider.dart';

class PaymentHistoryScreen extends StatefulWidget {
  final DataProvider dataProvider;

  const PaymentHistoryScreen({Key? key, required this.dataProvider})
    : super(key: key);

  @override
  State<PaymentHistoryScreen> createState() => _PaymentHistoryScreenState();
}

class _PaymentHistoryScreenState extends State<PaymentHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Payment History')),
      body: Obx(() {
        return ListView.builder(
          itemCount: widget.dataProvider.paymentHistory.length,
          itemBuilder: (context, index) {
            final payment = widget.dataProvider.paymentHistory[index];
            return ListTile(
              title: Text('₹${payment['amount']}'),
              subtitle: Text(payment['date']),
              leading: Icon(Icons.payment),
            );
          },
        );
      }),
    );
  }
}
