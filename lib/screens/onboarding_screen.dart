import 'package:doctorq_clone/extesions/context_extension.dart';
import 'package:doctorq_clone/screens/login_screen.dart';
import 'package:doctorq_clone/utils/ttrack_theme.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();

  int _currentIndex = 0;

  List<Map<String, String>> content = [
    {
      "title": 'Thousands of doctors',
      "description":
          'You can contact thousands of doctors and contact for your needs.',
    },
    {
      "title": 'Chat with doctors',
      "description":
          'Book an appointment with the doctor, chat via appointment letter and get a consultation.',
    },
    {
      "title": 'Live talk with the doctor',
      "description":
          'Easily connect with the doctor, and start voice and video call for better treatment & prescription.',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              onPageChanged: (value) => setState(() {
                _currentIndex = value;
              }),
              controller: _controller,
              children: [
                Image.asset(
                  'assets/doc3.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/doc2.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/doc1.jpg',
                  fit: BoxFit.cover,
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              child: Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Color(0x63000000),
                        offset: Offset(0, -10),
                        blurRadius: 100),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                height: MediaQuery.of(context).size.height * 0.45,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 35.0),
                      child: Text(
                        content[_currentIndex]['title']!,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color(0xFF194FE3),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 35.0, left: 25, right: 25),
                      child: Text(
                        content[_currentIndex]['description']!,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black87,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    buildIndicator(),
                    const SizedBox(height: 20),
                    skipButton(context),
                    const SizedBox(height: 10),
                    nextButton(context)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding nextButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: ElevatedButton(
        style: btnStyle(color: context.theme.primaryColor),
        onPressed: () {
          if (_currentIndex == 2) {
            context.navigator(const LoginScreen());
          } else {
            _controller.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeIn);
          }
        },
        child: const Text(
          'Next',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  TextButton skipButton(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.navigator(
          const LoginScreen(),
        );
      },
      child: const Text(
        'Skip',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Color(0xFF194FE3),
        ),
      ),
    );
  }

  Container buildIndicator() {
    return Container(
      padding: const EdgeInsets.only(top: 60),
      child: SmoothPageIndicator(
        controller: _controller,
        count: 3,
        effect: const ScaleEffect(
            dotHeight: 8,
            dotWidth: 8,
            spacing: 15,
            dotColor: Color.fromARGB(255, 212, 212, 212),
            activeDotColor: Color(0xff538EFF)),
      ),
    );
  }
}
