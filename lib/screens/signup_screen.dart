import 'package:doctorq_clone/extesions/context_extension.dart';
import 'package:doctorq_clone/screens/newProfile_screen.dart';
import 'package:doctorq_clone/screens/signin_screen.dart';
import 'package:doctorq_clone/utils/ttrack_theme.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _obscureText = true;
  bool isRememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
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
                'Sign-up for free',
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
              const SizedBox(height: 50),
              buildSignUp(context),
              const SizedBox(height: 20),
              Text(
                'or continue with',
                style: TextStyle(color: Colors.grey[700]),
              ),
              const SizedBox(height: 25),
              buildOtherSignUp(),
              const SizedBox(height: 25),
              buildNoAcc(context)
            ],
          ),
        ),
      ),
    );
  }

  Row buildNoAcc(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Already have an account?",
          style: TextStyle(color: Colors.grey),
        ),
        TextButton(
          onPressed: () {
            context.navigator(const SignInScreen());
          },
          child: const Text(
            'Sign-in',
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

  Row buildOtherSignUp() {
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

  Padding buildSignUp(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: ElevatedButton(
        style: btnStyle(color: context.theme.primaryColor),
        onPressed: () {
          context.navigator(const NewProfile());
        },
        child: const Text(
          'Sign Up',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
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
            height: 6,
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
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
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
              height: 6,
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
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
