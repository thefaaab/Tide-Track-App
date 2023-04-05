import 'package:doctorq_clone/extesions/context_extension.dart';
import 'package:doctorq_clone/screens/verification_text.dart';
import 'package:doctorq_clone/utils/ttrack_theme.dart';
import 'package:flutter/material.dart';

class ForgotPassSceen extends StatefulWidget {
  const ForgotPassSceen({super.key});

  @override
  State<ForgotPassSceen> createState() => _ForgotPassSceenState();
}

class _ForgotPassSceenState extends State<ForgotPassSceen> {
  int? _currentIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildAppBar(context),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, top: 25),
            child: Text(
              'Select an option to reset your password',
              style: TextStyle(color: Colors.grey.shade700),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) => Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  child: Container(
                    width: context.screensize.width,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: _currentIndex == index
                            ? context.theme.primaryColor
                            : Colors.black26,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 16),
                          child: Row(
                            children: [
                              CircleAvatar(
                                maxRadius: 34,
                                backgroundColor: const Color(0x85BBDEFB),
                                child: Image.asset(
                                  index == 0
                                      ? 'assets/comment.png'
                                      : 'assets/email.png',
                                  height: 28,
                                  color: const Color(0xff538EFF),
                                ),
                              ),
                            ],
                          ),
                        ),
                        buildTiles(index)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          continueBtn(context),
        ],
      ),
    );
  }

  Padding continueBtn(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25, bottom: 25),
      child: ElevatedButton(
        style: btnStyle(color: context.theme.primaryColor),
        onPressed: () {
          context.navigator(
            const OtpFormText(),
          );
        },
        child: const Text(
          'Continue',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Column buildTiles(int index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          index == 0 ? 'via SMS:' : 'via Email:',
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        ),
        const SizedBox(height: 5),
        Text(
          index == 0 ? '+91 123*****90' : 'e****@yourdomain.com',
          style: const TextStyle(
              color: Colors.black87, fontWeight: FontWeight.w600),
        )
      ],
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back,
          color: Color(0xFF194FE3),
        ),
      ),
      title: const Text(
        'Forgot Password',
        style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
      ),
    );
  }
}
