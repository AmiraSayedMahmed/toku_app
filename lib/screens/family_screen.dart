
import 'package:flutter/material.dart';

import '../model/Item_data.dart';
import '../widgets/list_item.dart';

class FamilyScreen extends StatelessWidget {
   FamilyScreen({Key? key}) : super(key: key);
  List<ItemData> items = [
    ItemData(
        enText: 'Father',
        jbText: 'Chichioya',
        image: 'assets/images/family_members/family_father.png',
        sound: 'father.wav'),
    ItemData(
        enText: 'Daughter',
        jbText: 'Chichioya',
        image: 'assets/images/family_members/family_grandmother.png',
        sound: 'father.wav'),
    ItemData(
        enText: 'Grand Father',
        jbText: 'Chichioya',
        image: 'assets/images/family_members/family_grandfather.png',
        sound: 'father.wav'),
    ItemData(
        enText: 'Mother',
        jbText: 'Musume',
        image: 'assets/images/family_members/family_mother.png',
        sound: 'father.wav'),
    ItemData(
        enText: 'Son',
        jbText: 'Musuko',
        image: 'assets/images/family_members/family_son.png',
        sound: 'father.wav'),
    ItemData(
        enText: 'GrandMather',
        jbText: 'Sobo',
        image: 'assets/images/family_members/family_father.png',
        sound: 'father.wav'),
    ItemData(
        enText: 'Old brother',
        jbText: 'Nisan',
        image: 'assets/images/family_members/family_older_brother.png',
        sound: 'father.wav'),
    ItemData(
        enText: 'older sister',
        jbText: 'Ane',
        image: 'assets/images/family_members/family_older_sister.png',
        sound: 'father.wav'),
    ItemData(
        enText: 'Younger sister',
        jbText: 'Chichioya',
        image: 'assets/images/family_members/family_younger_sister.png',
        sound: 'father.wav'),
    ItemData(
        enText: 'Younger Brother',
        jbText: 'Chichioya',
        image: 'assets/images/family_members/family_younger_brother.png',
        sound: 'father.wav'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: const Text(
          'Family Members',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ListItem(data: items[index],color: Color(0xff558B37),),
        itemCount: items.length,
      ),
    );
  }
}
