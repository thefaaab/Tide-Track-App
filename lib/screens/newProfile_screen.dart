import 'package:doctorq_clone/extesions/context_extension.dart';
import 'package:doctorq_clone/screens/navigation_screen.dart';
import 'package:doctorq_clone/utils/ttrack_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class NewProfile extends StatefulWidget {
  const NewProfile({super.key});

  @override
  State<NewProfile> createState() => _NewProfileState();
}

class _NewProfileState extends State<NewProfile> {
  final TextEditingController _date = TextEditingController();
  void dropdownCallback(String? selectedValue) {
    if (selectedValue is String) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            appBar(),
            const SizedBox(height: 30),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    photoUpload(context),
                    Divider(
                      color: Colors.grey.shade300,
                      thickness: 1,
                      height: 50,
                    ),
                    nameField(),
                    const SizedBox(height: 20),
                    emailField(),
                    const SizedBox(height: 20),
                    genderDropDown(),
                    const SizedBox(height: 20),
                    buildDob(context),
                    const SizedBox(height: 20),
                    addressField(),
                    const SizedBox(height: 50),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              style: btnStyle(color: context.theme.primaryColor),
              onPressed: () {
                context.navigator(const NavigationScreen());
              },
              child: const Text(
                'Save & Continue',
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

  Column addressField() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            'Address *',
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
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 2, color: Color(0xFF194FE3)),
                  borderRadius: BorderRadius.circular(99)),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.black12),
                  borderRadius: BorderRadius.circular(99)),
              hintText: 'Address',
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
    );
  }

  Column buildDob(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            'Date of Birth *',
            style: TextStyle(color: Colors.black87),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(99),
          ),
          child: TextField(
            readOnly: true,
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1900),
                lastDate: DateTime(2100),
              );
              if (pickedDate != null) {
                setState(() {
                  _date.text = DateFormat('dd-MM-yyyy').format(pickedDate);
                });
              }
            },
            controller: _date,
            keyboardType: TextInputType.datetime,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.black12),
                  borderRadius: BorderRadius.circular(99)),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.black12),
                  borderRadius: BorderRadius.circular(99)),
              suffixIcon: const Padding(
                padding: EdgeInsets.only(right: 25),
                child: Icon(Icons.calendar_month_outlined),
              ),
              hintText: 'Date of Birth',
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
    );
  }

  Column genderDropDown() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            'Gender *',
            style: TextStyle(color: Colors.black87),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          width: MediaQuery.of(context).size.width,
          child: DropdownButtonFormField<String>(
            elevation: 3,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 2, color: Color(0xFF194FE3)),
                  borderRadius: BorderRadius.circular(99)),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.black12),
                  borderRadius: BorderRadius.circular(99)),
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            ),
            dropdownColor: Colors.white,
            borderRadius: BorderRadius.circular(25),
            icon: const Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.arrow_drop_down),
            ),
            iconSize: 22,
            hint: Text(
              'Gender',
              style: TextStyle(fontSize: 14, color: Colors.grey.shade400),
            ),
            isExpanded: true,
            style: const TextStyle(fontSize: 14, color: Colors.black87),
            onChanged: (String? value) {},
            items: const [
              DropdownMenuItem(
                value: "Male",
                child: Text('Male'),
              ),
              DropdownMenuItem(
                value: "Female",
                child: Text('Female'),
              ),
              DropdownMenuItem(
                value: "Other",
                child: Text('Other'),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Column emailField() {
    return Column(
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
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 2, color: Color(0xFF194FE3)),
                  borderRadius: BorderRadius.circular(99)),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.black12),
                  borderRadius: BorderRadius.circular(99)),
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
    );
  }

  nameField() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            'Full Name *',
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
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 2,
                    color: Color(0xFF194FE3),
                  ),
                  borderRadius: BorderRadius.circular(99)),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.black12),
                  borderRadius: BorderRadius.circular(99)),
              hintText: 'Full Name',
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
    );
  }

  Container photoUpload(BuildContext context) {
    return Container(
      width: context.screensize.width,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Colors.black12,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
        child: Column(
          children: [
            CircleAvatar(
              maxRadius: 34,
              backgroundColor: const Color(0x85BBDEFB),
              child: Image.asset(
                'assets/upload.png',
                height: 28,
                color: const Color(0xff538EFF),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Upload your photo',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: SvgPicture.asset(
        'assets/logo.svg',
      ),
      title: const Text(
        'Create your profile',
        style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
      ),
    );
  }
}
