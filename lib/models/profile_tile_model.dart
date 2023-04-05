import 'package:flutter/material.dart';

class ProfileTileModel {
  String image;
  IconData icon;
  String name;
  String description;
  String time;
  IconData trailingIcon;

  ProfileTileModel({
    required this.image,
    required this.icon,
    required this.name,
    required this.description,
    required this.time,
    required this.trailingIcon,
  });
}
