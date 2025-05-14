import 'package:flutter/material.dart';

import '../Providers/data_provider.dart';

class HelpSupportScreen extends StatefulWidget {
  final DataProvider dataProvider;

  const HelpSupportScreen({Key? key, required this.dataProvider})
    : super(key: key);

  @override
  State<HelpSupportScreen> createState() => _HelpSupportScreenState();
}

class _HelpSupportScreenState extends State<HelpSupportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Help & Support')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'For any assistance, please contact us:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Email: support@municipalcorp.com'),
            Text('Phone: +91-1234567890'),
            SizedBox(height: 20),
            Text(
              'FAQs:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('1. How can I register a complaint?'),
            Text('2. How can I pay my bills?'),
            Text('3. How can I request a service?'),
          ],
        ),
      ),
    );
  }
}
