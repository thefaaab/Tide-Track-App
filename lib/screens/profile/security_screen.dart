import 'package:flutter/material.dart';

class SecurityScreen extends StatefulWidget {
  const SecurityScreen({super.key});

  @override
  State<SecurityScreen> createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  bool value1 = true;
  bool value2 = false;
  bool value3 = false;

  onChanged1(bool newValue1) {
    setState(() {
      value1 = newValue1;
    });
  }

  onChanged2(bool newValue2) {
    setState(() {
      value2 = newValue2;
    });
  }

  onChanged3(bool newValue3) {
    setState(() {
      value3 = newValue3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          appBar(context),
          customSwitch('Sound', value1, onChanged1),
          const Divider(indent: 16, endIndent: 16),
          customSwitch('Vibrate', value2, onChanged2),
          const Divider(indent: 16, endIndent: 16),
          customSwitch('Tips', value3, onChanged3),
        ],
      ),
    );
  }

  Widget customSwitch(String text, bool value, Function onChanged) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const Spacer(),
          Switch(
              value: value,
              onChanged: (newValue) {
                onChanged(newValue);
              })
        ],
      ),
    );
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Color(0xFF194FE3))),
      title: const Text(
        'Notification Settings',
        style: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      centerTitle: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}
