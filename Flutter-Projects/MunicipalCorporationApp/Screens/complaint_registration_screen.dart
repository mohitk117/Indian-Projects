import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Providers/data_provider.dart';

class ComplaintRegistrationScreen extends StatefulWidget {
  final DataProvider dataProvider;

  const ComplaintRegistrationScreen({Key? key, required this.dataProvider})
    : super(key: key);

  @override
  State<ComplaintRegistrationScreen> createState() =>
      _ComplaintRegistrationScreenState();
}

class _ComplaintRegistrationScreenState
    extends State<ComplaintRegistrationScreen> {
  final TextEditingController complaintController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register Complaint')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: complaintController,
              decoration: InputDecoration(
                labelText: 'Complaint Details',
                border: OutlineInputBorder(),
              ),
              maxLines: 5,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                widget.dataProvider.registerComplaint(complaintController.text);
                Get.snackbar('Success', 'Complaint registered successfully!');
              },
              child: Text('Submit Complaint'),
            ),
          ],
        ),
      ),
    );
  }
}
