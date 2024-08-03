import 'package:first_project/tunes/item.dart';
import 'package:flutter/material.dart';

class ItemModel extends StatelessWidget {
  const ItemModel({super.key, required this.tune});

  final Item tune;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          tune.playSound();
        },
        child: Container(
          color: tune.color,
        ),
      ),
    );
  }
}
