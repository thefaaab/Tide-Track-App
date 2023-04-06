import 'package:doctorq_clone/extesions/context_extension.dart';
import 'package:doctorq_clone/screens/navigation_screen.dart';
import 'package:doctorq_clone/utils/ttrack_theme.dart';
import 'package:flutter/material.dart';

class CallEndScreen extends StatelessWidget {
  const CallEndScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 120.0),
              child: Column(
                children: const [
                  Text(
                    'Video Call ended',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 16),
                  Text(
                    '29:54 Minutes',
                    style: TextStyle(
                        color: Color(0xFF194FE3),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Recordings have been saved in history',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 40),
                  Center(
                    child: CircleAvatar(
                      maxRadius: 80,
                      backgroundImage: AssetImage('assets/dr4.jpg'),
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Dr.Tiffany Rogers',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Column(
              children: [
                reviewBtn(context),
                const SizedBox(
                  height: 10,
                ),
                homeBtn(context),
              ],
            )
          ],
        ),
      ),
    );
  }

  reviewBtn(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: const Color(0xff538EFF),
        borderRadius: BorderRadius.circular(25),
      ),
      child: ElevatedButton(
        style: btnStyle(color: context.theme.primaryColor),
        onPressed: () {
          // context.navigator(const SignUpScreen());
        },
        child: const Text(
          'Write a Review',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  homeBtn(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: const Color(0xff538EFF),
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextButton(
        onPressed: () {
          context.navigator(const NavigationScreen());
        },
        child: const Text(
          'Go to Home',
          style: TextStyle(
              fontSize: 14,
              color: Color(0xff538EFF),
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
