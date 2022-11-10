
import 'package:flutter/material.dart';

import '../model/Item_data.dart';
import '../widgets/list_item.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ItemData> items = [];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff50ADC7),
        title: const Text(
          'Numbers',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ListItem(data: items[index]),
        itemCount: items.length,
      ),
    );

  }
}
