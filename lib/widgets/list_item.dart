import 'package:flutter/material.dart';
import 'package:toku_app/model/Item_data.dart';
import 'package:audioplayers/audioplayers.dart';
class ListItem extends StatelessWidget {
   ListItem({Key? key, required this.data , this.color}) : super(key: key);
      Color? color;
   ItemData data;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
              color: const Color(0xffFEF6DB),
              child: Image.asset('${data.image}')),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Text(
                  '${data.enText}',
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '${data.jbText}',
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
              onPressed: () {
                AudioCache player = AudioCache(prefix: 'assets/sounds/numbers/');
                player.load(data.sound);
              },
              icon: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 32,
              ))
        ],
      ),
    );
  }
}
