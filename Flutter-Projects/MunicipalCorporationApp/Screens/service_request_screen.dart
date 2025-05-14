import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Providers/data_provider.dart';

class ServiceRequestScreen extends StatefulWidget {
  final DataProvider dataProvider;

  const ServiceRequestScreen({Key? key, required this.dataProvider})
    : super(key: key);

  @override
  State<ServiceRequestScreen> createState() => _ServiceRequestScreenState();
}

class _ServiceRequestScreenState extends State<ServiceRequestScreen> {
  final TextEditingController serviceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Request Service')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: serviceController,
              decoration: InputDecoration(
                labelText: 'Service Details',
                border: OutlineInputBorder(),
              ),
              maxLines: 5,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                widget.dataProvider.requestService(serviceController.text);
                Get.snackbar('Success', 'Service request submitted!');
              },
              child: Text('Submit Request'),
            ),
            SizedBox(
              height: 60,
              child: ListView.builder(
                itemCount: widget.dataProvider.serviceRequests.length,
                itemBuilder: (context, index) {
                  final complaint = widget.dataProvider.serviceRequests[index];
                  return ListTile(
                    title: Text(complaint),
                    leading: Icon(Icons.info),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
