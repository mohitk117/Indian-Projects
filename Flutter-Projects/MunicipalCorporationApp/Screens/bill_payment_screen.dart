import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Providers/data_provider.dart';

class BillPaymentScreen extends StatefulWidget {
  final DataProvider dataProvider;

  const BillPaymentScreen({Key? key, required this.dataProvider})
    : super(key: key);

  @override
  State<BillPaymentScreen> createState() => _BillPaymentScreenState();
}

class _BillPaymentScreenState extends State<BillPaymentScreen> {
  final TextEditingController amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pay Bills')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: amountController,
              decoration: InputDecoration(
                labelText: 'Enter Amount',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                widget.dataProvider.payBill(
                  double.parse(amountController.text),
                );
                Get.snackbar('Success', 'Bill payment successful!');
              },
              child: Text('Pay Now'),
            ),
          ],
        ),
      ),
    );
  }
}
