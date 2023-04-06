import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:doctorq_clone/extesions/context_extension.dart';
import 'package:doctorq_clone/utils/ttrack_theme.dart';
import 'package:doctorq_clone/widget/doc_book_tile.dart';

import 'package:flutter/material.dart';

class DocBookScreen extends StatefulWidget {
  const DocBookScreen({super.key});

  @override
  State<DocBookScreen> createState() => _DocBookScreenState();
}

class _DocBookScreenState extends State<DocBookScreen> {
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
            const DocBookTile(),
            const SizedBox(height: 20),
            buildDocFeatures(context),
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'About Doctor',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                        'Dr.Ralph Edwards is one of the top Cardiologist in Ramsay College Hospital at California. He have achieved several awards for his wonderful contribution in medical field.',
                        style: TextStyle(fontSize: 12)),
                    const SizedBox(height: 20),
                    const Text(
                      'Working Time',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 15),
                    const Text('Mon - Fri, 09:00 AM - 09:00 PM',
                        style: TextStyle(fontSize: 12)),
                    const SizedBox(height: 20),
                    const Text('Book an Appointment',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 15),
                    DatePicker(DateTime.now(),
                        width: 80,
                        height: 100,
                        initialSelectedDate: DateTime.now(),
                        selectionColor: const Color(0xFF194FE3),
                        deactivatedColor: Colors.grey[200]!,
                        selectedTextColor: Colors.white,
                        onDateChange: (date) {}),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              style: btnStyle(color: context.theme.primaryColor),
              onPressed: () {
                // context.navigator(const NavigationScreen());
              },
              child: const Text(
                'Book Appointment',
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
                    '5000+',
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
                    '12+',
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
                    '1600+',
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
        'About me!',
        style: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      centerTitle: false,
      actions: [
        const SizedBox(width: 16),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.favorite_border_rounded,
            size: 32,
          ),
          style: IconButton.styleFrom(
            foregroundColor: const Color(0xFF194FE3),
            backgroundColor: Colors.grey[200],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
        const SizedBox(width: 10),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.share,
            size: 32,
          ),
          style: IconButton.styleFrom(
            foregroundColor: const Color(0xFF194FE3),
            backgroundColor: Colors.grey[200],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        )
      ],
      backgroundColor: Colors.transparent,
      elevation: 0,
      scrolledUnderElevation: 0,
    );
  }
}
