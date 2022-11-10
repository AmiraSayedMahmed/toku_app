import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {
    HomeItem({this.name , this.color , required this.onTap});
  String? name;
  Color? color;
  VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 24),
        width: double.infinity,
        height: 65,
        color: color,
        child: Text(
          name!,
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
