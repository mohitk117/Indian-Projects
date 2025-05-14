import 'package:flutter/material.dart';
import '../Providers/data_provider.dart';

class AboutUsScreen extends StatefulWidget {
  final DataProvider dataProvider;

  const AboutUsScreen({Key? key, required this.dataProvider}) : super(key: key);

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('About Us')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'This app is developed by the Municipal Corporation to provide citizens with easy access to services like complaint registration, bill payments, and more.',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
