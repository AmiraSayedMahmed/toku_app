import 'package:flutter/material.dart';
import 'package:toku_app/screens/colors_screen.dart';
import 'package:toku_app/screens/family_screen.dart';
import 'package:toku_app/screens/numbers_screen.dart';
import 'package:toku_app/screens/phrases_screen.dart';
import 'package:toku_app/widgets/home_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text(
          'Toku',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          HomeItem(name: 'Number', color: Color(0xffEF9235) , onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => NumbersScreen()));
          }, ),
          HomeItem(name: 'Family Member', color: Color(0xff558B37) , onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => FamilyScreen()));

          }, ),
          HomeItem(name: 'Colors', color: Color(0xff79359F) , onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ColorsScreen()));

          }, ),
          HomeItem(name: 'Phrases', color: Color(0xff50ADC7) , onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => PhrasesScreen()));

          }, ),

        ],
      ),
    );
  }
}
