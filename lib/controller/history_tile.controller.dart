import 'package:doctorq_clone/models/history_tile_model.dart';
import 'package:flutter/material.dart';

class HistoryTileController {
  List<HistoryTileModel> historyTileList = [
    HistoryTileModel(
      image: 'assets/dr2.jpg',
      name: 'Dr.Ralph Edward',
      description: 'Ok, thank you for your time.',
      time: '10:00 AM',
    ),
    HistoryTileModel(
      image: 'assets/doc1.jpg',
      name: 'Dr.Jane Cooper',
      description: 'Ok, thank you for your time.',
      time: '11:08 Am',
    ),
    HistoryTileModel(
      image: 'assets/doc3.jpg',
      name: 'Dr.Amit Shukla',
      description: 'Ok, thank you for your time.',
      time: '12:10 PM',
    ),
  ];
}
