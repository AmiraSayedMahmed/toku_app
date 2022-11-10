
import 'package:flutter/material.dart';

import '../model/Item_data.dart';
import '../widgets/list_item.dart';

class ColorsScreen extends StatelessWidget {
   ColorsScreen({Key? key}) : super(key: key);
  List<ItemData> items = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff79359F),
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
