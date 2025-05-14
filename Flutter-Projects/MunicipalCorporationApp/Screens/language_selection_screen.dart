import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Providers/data_provider.dart';

class LanguageSelectionScreen extends StatefulWidget {
  final DataProvider dataProvider;

  const LanguageSelectionScreen({Key? key, required this.dataProvider})
    : super(key: key);

  @override
  State<LanguageSelectionScreen> createState() =>
      _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Language Selection')),
      body: ListView.builder(
        itemCount: widget.dataProvider.languages.length,
        itemBuilder: (context, index) {
          final language = widget.dataProvider.languages[index];
          return ListTile(
            title: Text(language),
            trailing: Obx(
              () => Radio<String>(
                value: language,
                groupValue: widget.dataProvider.selectedLanguage.value,
                onChanged:
                    (value) =>
                        widget.dataProvider.updateSelectedLanguage(value!),
              ),
            ),
          );
        },
      ),
    );
  }
}
