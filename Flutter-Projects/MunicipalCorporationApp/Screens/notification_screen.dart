import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Providers/data_provider.dart';

class NotificationScreen extends StatefulWidget {
  final DataProvider dataProvider;

  const NotificationScreen({Key? key, required this.dataProvider})
    : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notifications')),
      body: Obx(() {
        return ListView.builder(
          itemCount: widget.dataProvider.notifications.length,
          itemBuilder: (context, index) {
            final notification = widget.dataProvider.notifications[index];
            return ListTile(
              title: Text(notification),
              leading: Icon(Icons.notifications),
            );
          },
        );
      }),
    );
  }
}
