import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Providers/data_provider.dart';

class ComplaintHistoryScreen extends StatefulWidget {
  final DataProvider dataProvider;

  const ComplaintHistoryScreen({Key? key, required this.dataProvider})
    : super(key: key);

  @override
  State<ComplaintHistoryScreen> createState() => _ComplaintHistoryScreenState();
}

class _ComplaintHistoryScreenState extends State<ComplaintHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Complaint History')),
      body: Obx(() {
        return widget.dataProvider.complaintHistory.length == 0
            ? Center(child: Text("No Complaints Registered"))
            : ListView.builder(
              itemCount: widget.dataProvider.complaintHistory.length,
              itemBuilder: (context, index) {
                final complaint = widget.dataProvider.complaintHistory[index];
                return ListTile(
                  title: Text(complaint),
                  leading: Icon(Icons.report_problem),
                );
              },
            );
      }),
    );
  }
}
