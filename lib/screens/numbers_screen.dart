import 'package:flutter/material.dart';
import 'package:toku_app/widgets/list_item.dart';

import '../model/Item_data.dart';

class NumbersScreen extends StatelessWidget {
  const NumbersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ItemData> items = [
      ItemData(
          enText: 'one',
          jbText: 'ichi',
          image: 'assets/images/numbers/number_one.png',
          sound: 'number_one_sound.mp3'),
      ItemData(
          enText: 'Two',
          jbText: 'Ni',
          image: 'assets/images/numbers/number_two.png',
          sound: 'number_two_sound.mp3'),
      ItemData(
          enText: 'Three',
          jbText: 'san',
          image: 'assets/images/numbers/number_three.png',
          sound: 'number_three_sound.mp3'),
      ItemData(
          enText: 'Four',
          jbText: 'yon',
          image: 'assets/images/numbers/number_four.png',
          sound: 'number_four_sound.mp3'),
      ItemData(
          enText: 'Five',
          jbText: 'go',
          image: 'assets/images/numbers/number_five.png',
          sound: 'number_five_sound.mp3'),
      ItemData(
          enText: 'Six',
          jbText: 'roku',
          image: 'assets/images/numbers/number_six.png',
          sound: 'number_six_sound.mp3'),
      ItemData(
          enText: 'Seven',
          jbText: 'nana',
          image: 'assets/images/numbers/number_seven.png',
          sound: 'number_seven_sound.mp3'),
      ItemData(
          enText: 'Eight',
          jbText: 'hachi',
          image: 'assets/images/numbers/number_eight.png',
          sound: 'number_eight_sound.mp3'),
      ItemData(
          enText: 'Nine',
          jbText: 'kyu',
          image: 'assets/images/numbers/number_nine.png',
          sound: 'number_nine_sound.mp3'),
      ItemData(
          enText: 'Ten',
          jbText: 'ju',
          image: 'assets/images/numbers/number_ten.png',
          sound: 'number_ten_sound.mp3'),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: const Text(
          'Numbers',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) => ListItem(data: items[index],color: Color(0xffEF9235),),
          itemCount: items.length,
      ),
    );
  }
}
