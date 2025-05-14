import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Providers/data_provider.dart';

class LocalInfoScreen extends StatefulWidget {
  final DataProvider dataProvider;

  const LocalInfoScreen({Key? key, required this.dataProvider})
    : super(key: key);

  @override
  State<LocalInfoScreen> createState() => _LocalInfoScreenState();
}

class _LocalInfoScreenState extends State<LocalInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Local Information')),
      body: Obx(() {
        return widget.dataProvider.localInfo.length == 0
            ? Center(child: Text("No Local Information Available"))
            : ListView.builder(
              itemCount: widget.dataProvider.localInfo.length,
              itemBuilder: (context, index) {
                final info = widget.dataProvider.localInfo[index];
                return ListTile(title: Text(info), leading: Icon(Icons.info));
              },
            );
      }),
    );
  }
}
