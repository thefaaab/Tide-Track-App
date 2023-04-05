import 'package:doctorq_clone/extesions/context_extension.dart';
import 'package:doctorq_clone/screens/video_call_screen.dart';
import 'package:doctorq_clone/utils/ttrack_theme.dart';
import 'package:doctorq_clone/widget/doc_profile_tile.dart';

import 'package:flutter/material.dart';

class DocProfileScreen extends StatefulWidget {
  const DocProfileScreen({super.key});

  @override
  State<DocProfileScreen> createState() => _DocProfileScreenState();
}

class _DocProfileScreenState extends State<DocProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appBar(),
            const SizedBox(height: 20),
            const DocProfileTile(),
            const SizedBox(height: 20),
            buildDocFeatures(context),
            const SizedBox(height: 20),
            otherInfo(),
            ElevatedButton(
              style: btnStyle(color: context.theme.primaryColor),
              onPressed: () {
                context.navigator(const VideoCallScreen());
              },
              child: const Text(
                'Video Call',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expanded otherInfo() {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Visiting Time',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Text('Monday, April 10 2023\n10:00 AM - 11:00 AM'),
            SizedBox(height: 15),
            Divider(
              color: Colors.black12,
              thickness: 1,
              indent: 5,
              endIndent: 5,
            ),
            SizedBox(height: 15),
            Text(
              'Patient Information',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Text(
                'Name   :  Adam Smith\nAge       :  32\nPhone   :  +1 1234-567-890'),
            SizedBox(height: 15),
            Divider(
              color: Colors.black12,
              thickness: 1,
              indent: 5,
              endIndent: 5,
            ),
            SizedBox(height: 15),
            Text('Payment Information',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 15),
            Text('Total Amount   :  ₹ 750 (Paid)'),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Container buildDocFeatures(BuildContext context) {
    return Container(
      height: 180,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    maxRadius: 26,
                    child: Icon(Icons.people_alt_rounded),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '4700+',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Consultations',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ]),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    maxRadius: 26,
                    child: Icon(Icons.person),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '16+',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Years experience',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ]),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    maxRadius: 26,
                    child: Icon(Icons.message_rounded),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '2600+',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Reviews',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ]),
          ],
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Color(0xFF194FE3))),
      title: const Text(
        'Dr.Tiffany Rogers',
        style: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      centerTitle: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}
