import 'package:doctorq_clone/models/profile_tile_model.dart';
import 'package:flutter/material.dart';

class ProfileTileController {
  List<ProfileTileModel> profileTileList = [
    ProfileTileModel(
      image: 'assets/dr2.jpg',
      icon: Icons.videocam_rounded,
      name: 'Dr.Ralph Edward',
      description: 'Video Call',
      time: '01:54 PM - 02:15 PM',
      trailingIcon: Icons.videocam,
    ),
    ProfileTileModel(
      image: 'assets/doc1.jpg',
      icon: Icons.message,
      name: 'Dr.Jane Cooper',
      description: 'Chat',
      time: '02:35 PM - 02:48 PM',
      trailingIcon: Icons.message,
    ),
    ProfileTileModel(
      image: 'assets/doc3.jpg',
      icon: Icons.phone,
      name: 'Dr.Amit Shukla',
      description: 'Phone Call',
      time: '08:04 PM - 08:12 PM',
      trailingIcon: Icons.phone,
    ),
    ProfileTileModel(
      image: 'assets/dr1.jpg',
      icon: Icons.videocam_rounded,
      name: 'Dr.Kaylie',
      description: 'Video Call',
      time: '12:14 PM - 12:27 PM',
      trailingIcon: Icons.videocam,
    ),
    ProfileTileModel(
      image: 'assets/dr4.jpg',
      icon: Icons.phone,
      name: 'Dr.Tiffany Rogers',
      description: 'Phone Call',
      time: '05:24 PM - 06:01 PM',
      trailingIcon: Icons.phone,
    ),
  ];
}
