import 'package:doctorq_clone/extesions/context_extension.dart';
import 'package:doctorq_clone/screens/home/doc_book_screen.dart';
import 'package:doctorq_clone/screens/home/favorite_screen.dart';
import 'package:doctorq_clone/screens/home/notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          CustomAppbar(),
          SearchInput(),
          SpecialistDoctors(),
          TopDoctors(),
        ],
      ),
    );
  }
}

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: SvgPicture.asset(
        'assets/logo.svg',
      ),
      title: const Text(
        'Tide Track',
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      centerTitle: false,
      actions: [
        IconButton(
          onPressed: () {
            context.navigator(const NotificationScreen());
          },
          icon: const Icon(
            Icons.notifications,
            size: 32,
            color: Color(0xFF194FE3),
          ),
          style: IconButton.styleFrom(
            foregroundColor: context.theme.primaryColor,
            backgroundColor: Colors.grey[200],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
        const SizedBox(width: 16),
        IconButton(
          onPressed: () {
            context.navigator(const FavouriteScreen());
          },
          icon: const Icon(
            Icons.favorite,
            size: 32,
            color: Color(0xFFE31970),
          ),
          style: IconButton.styleFrom(
            foregroundColor: context.theme.primaryColor,
            backgroundColor: Colors.grey[200],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        )
      ],
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}

class TopDoctors extends StatelessWidget {
  const TopDoctors({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Top Doctors',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'See all',
                style: TextStyle(
                    color: context.theme.primaryColor,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        GestureDetector(
          onTap: () {
            context.navigator(const DocBookScreen());
          },
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List<Widget>.generate(
                4,
                (index) => Container(
                  height: 200,
                  width: 150,
                  clipBehavior: Clip.antiAlias,
                  margin: const EdgeInsets.only(right: 32),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.black12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Image.asset(
                          'assets/dr${index + 1}.jpg',
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: const [
                            Text(
                              'Dr. Ralph Edward',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Cardio Specialist',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ).toList(),
            ),
          ),
        ),
      ],
    );
  }
}

class SpecialistDoctors extends StatelessWidget {
  const SpecialistDoctors({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Specialist Doctors',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'See all',
                style: TextStyle(
                    color: context.theme.primaryColor,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                height: 200,
                width: 150,
                margin: const EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xffFF6D88),
                      Color(0xffFF365C),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/heartbeat.png',
                        height: 60,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Cardio Specialists",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      const Text('252 Doctors',
                          style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
              ),
              Container(
                height: 200,
                width: 150,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xff6499FF),
                      Color(0xff3278FE),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/tooth.png',
                        height: 60,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Dental Specialists",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      const Text('186 Doctors',
                          style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
              ),
              Container(
                height: 200,
                width: 150,
                margin: const EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xffFFDA7B),
                      Color(0xffFFBE16),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/eye.png',
                        height: 60,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Eye Specialists",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      const Text('202 Doctors',
                          style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
              ),
              Container(
                height: 200,
                width: 150,
                margin: const EdgeInsets.only(left: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xffFF6D88),
                      Color(0xffFF365C),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/brain.png',
                        height: 60,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Brain Specialists",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      const Text('206 Doctors',
                          style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SearchInput extends StatelessWidget {
  const SearchInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(128),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.grey[200],
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          hintText: 'Search',
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Icon(Icons.search, size: 26),
            ),
          )),
    );
  }
}
