import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Providers/data_provider.dart';

class GrievanceRedressalScreen extends StatefulWidget {
  final DataProvider dataProvider;

  const GrievanceRedressalScreen({Key? key, required this.dataProvider})
    : super(key: key);

  @override
  State<GrievanceRedressalScreen> createState() =>
      _GrievanceRedressalScreenState();
}

class _GrievanceRedressalScreenState extends State<GrievanceRedressalScreen> {
  final TextEditingController grievanceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Grievance Redressal')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: grievanceController,
              decoration: InputDecoration(
                labelText: 'Grievance Details',
                border: OutlineInputBorder(),
              ),
              maxLines: 5,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                widget.dataProvider.submitGrievance(grievanceController.text);
                Get.snackbar('Success', 'Grievance submitted successfully!');
              },
              child: Text('Submit Grievance'),
            ),
            SizedBox(
              height: 60,
              child: ListView.builder(
                itemCount: widget.dataProvider.grievances.length,
                itemBuilder: (context, index) {
                  final complaint = widget.dataProvider.grievances[index];
                  return ListTile(
                    title: Text(complaint),
                    leading: Icon(Icons.error),
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
