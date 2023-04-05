import 'package:doctorq_clone/extesions/context_extension.dart';
import 'package:doctorq_clone/screens/forgotPass_screen.dart';
import 'package:doctorq_clone/screens/signup_screen.dart';
import 'package:doctorq_clone/utils/ttrack_theme.dart';
import 'package:flutter/material.dart';

import 'navigation_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _obscureText = true;
  bool isRememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Center(
              child: Image.asset(
                'assets/logo.png',
                height: 150,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Sign-in to your account',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          const SizedBox(
            height: 20,
          ),
          buildEmail(),
          const SizedBox(
            height: 25,
          ),
          buildPassword(),
          const SizedBox(height: 10),
          buildRememberMe(),
          const SizedBox(height: 20),
          buildSignIn(context),
          const SizedBox(height: 20),
          Text(
            'or continue with',
            style: TextStyle(color: Colors.grey[700]),
          ),
          const SizedBox(height: 25),
          gnfSignIn(),
          const SizedBox(height: 25),
          noAcc(context)
        ],
      ),
    );
  }

  Row noAcc(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Don't have an account?",
          style: TextStyle(color: Colors.grey),
        ),
        TextButton(
          onPressed: () {
            context.navigator(const SignUpScreen());
          },
          child: const Text(
            'Sign-up',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Color(0xff538EFF)),
          ),
        ),
      ],
    );
  }

  Row buildForgotPass() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            context.navigator(
              const ForgotPassSceen(),
            );
          },
          child: const Text(
            'Forgot your password?',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Color(0xff538EFF)),
          ),
        ),
      ],
    );
  }

  Row buildAlreadyAcc() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Already have an account?',
          style: TextStyle(color: Colors.grey),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Sign-in',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Color(0xff538EFF)),
          ),
        ),
      ],
    );
  }

  Row gnfSignIn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 60,
          width: 170,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 2, color: Colors.black12)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/facebook.png',
                height: 35,
              ),
              const SizedBox(width: 10),
              const Text(
                'facebook',
                style: TextStyle(fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Container(
          height: 60,
          width: 170,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 2, color: Colors.black12)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/google.png',
                height: 30,
              ),
              const SizedBox(width: 10),
              const Text(
                'Google',
                style: TextStyle(fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ],
    );
  }

  Padding buildSignIn(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: ElevatedButton(
        style: btnStyle(color: context.theme.primaryColor),
        onPressed: () {
          context.navigator(
            const NavigationScreen(),
          );
        },
        child: const Text(
          'Sign In',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Padding buildRememberMe() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Theme(
                data: ThemeData(
                  unselectedWidgetColor: const Color(0xff538EFF),
                ),
                child: Checkbox(
                  value: isRememberMe,
                  checkColor: Colors.white,
                  activeColor: const Color(0xff538EFF),
                  onChanged: (value) {
                    setState(() {
                      isRememberMe = value!;
                    });
                  },
                ),
              ),
              const Text(
                'Remember me',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          buildForgotPass(),
        ],
      ),
    );
  }

  Padding buildPassword() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'Password *',
              style: TextStyle(color: Colors.black87),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(99),
            ),
            child: TextField(
              obscureText: _obscureText,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 2, color: Colors.black12),
                    borderRadius: BorderRadius.circular(99)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(99),
                  borderSide: const BorderSide(
                    width: 2,
                    color: Color(0xFF194FE3),
                  ),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 25.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    child: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                        color: Colors.grey),
                  ),
                ),
                hintText: 'Password',
                hintStyle: const TextStyle(
                    color: Colors.black26,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.all(20),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding buildEmail() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 25.0),
              child: Text(
                'Email *',
                style: TextStyle(color: Colors.black87),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(99),
              ),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 2, color: Colors.black12),
                    borderRadius: BorderRadius.circular(99),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(99),
                    borderSide: const BorderSide(
                      width: 2,
                      color: Color(0xFF194FE3),
                    ),
                  ),
                  hintText: 'Email',
                  hintStyle: const TextStyle(
                      color: Colors.black26,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.all(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
