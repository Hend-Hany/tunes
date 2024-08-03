import 'package:first_project/tunes/item.dart';
import 'package:first_project/tunes/item_model.dart';
import 'package:flutter/material.dart';

class Tunes extends StatelessWidget {
  Tunes({super.key});

  final List<Item> tunes = [
    Item(
      color: Color(0xffF44336),
      sound: 'tunes/note1.wav',
    ),
    Item(
      color: Color(0xffF89800),
      sound: 'tunes/note2.wav',
    ),
    Item(
      color: Color(0xffFEEB3B),
      sound: 'tunes/note3.wav',
    ),
    Item(
      color: Color(0xff4CAF50),
      sound: 'tunes/note4.wav',
    ),
    Item(
      color: Color(0xff2F9688),
      sound: 'tunes/note5.wav',
    ),
    Item(
      color: Color(0xff2896F3),
      sound: 'tunes/note6.wav',
    ),
    Item(
      color: Color(0xff9C27B0),
      sound: 'tunes/note7.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Flutter Tunes',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff253238),
      ),
      body: Column(
        children: tunes
            .map(
              (e) => ItemModel(tune: e),
            )
            .toList(),
      ),
    );
  }
}
