import 'package:doctorq_clone/extesions/context_extension.dart';
import 'package:doctorq_clone/screens/signin_screen.dart';
import 'package:doctorq_clone/screens/signup_screen.dart';
import 'package:doctorq_clone/utils/ttrack_theme.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Center(
                child: Image.asset(
                  'assets/logo.png',
                  height: 300,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'Welcome to Tide Trak',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 96),
                    signupBtn(context),
                    const SizedBox(
                      height: 10,
                    ),
                    signinBtn(context),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding signupBtn(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: const Color(0xff538EFF),
          borderRadius: BorderRadius.circular(25),
        ),
        child: ElevatedButton(
          style: btnStyle(color: context.theme.primaryColor),
          onPressed: () {
            context.navigator(const SignUpScreen());
          },
          child: const Text(
            'Sign Up',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Padding signinBtn(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
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
            context.navigator(const SignInScreen());
          },
          child: const Text(
            'Sign In',
            style: TextStyle(
                fontSize: 14,
                color: Color(0xff538EFF),
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
