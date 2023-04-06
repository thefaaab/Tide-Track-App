import 'package:flutter/material.dart';

class NotificationTile extends StatelessWidget {
  const NotificationTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(15),
      ),
      // width: double.infinity,
      child: Row(
        children: [
          const SizedBox(
              child: Padding(
            padding: EdgeInsets.all(16.0),
            child: CircleAvatar(
              maxRadius: 36,
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              child: Icon(Icons.alarm),
            ),
          )),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Appointment Alarm!',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Your appointment will be starting in\n15 minutes. Get ready and stay safe.',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
