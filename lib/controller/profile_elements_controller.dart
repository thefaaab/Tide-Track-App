import 'package:doctorq_clone/models/profile_elements_model.dart';
import 'package:flutter/material.dart';

class ProfileElementsController {
  List<ProfileElementsModel> profileElementsList = [
    ProfileElementsModel(
      icon: Icons.notifications,
      color: const Color(0xFF194FE3),
      title: 'Notification Settings',
    ),
    ProfileElementsModel(
      icon: Icons.lock,
      color: const Color(0xFF194FE3),
      title: 'Security',
    ),
    ProfileElementsModel(
      icon: Icons.remove_red_eye,
      color: const Color(0xFF194FE3),
      title: 'Appearance',
    ),
    ProfileElementsModel(
      icon: Icons.message,
      color: const Color(0xFF194FE3),
      title: 'Language',
    ),
    ProfileElementsModel(
      icon: Icons.help,
      color: const Color(0xFF194FE3),
      title: 'Help',
    ),
    ProfileElementsModel(
      icon: Icons.people_alt_rounded,
      color: const Color(0xFF194FE3),
      title: 'Invite Friends',
    ),
    ProfileElementsModel(
      icon: Icons.exit_to_app,
      color: const Color(0xFFC0000D),
      title: 'Logout',
    ),
  ];
}
